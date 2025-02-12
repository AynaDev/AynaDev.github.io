from flask import Flask, request, jsonify
import requests
import os

app = Flask(__name__)

DISCORD_API_URL = "https://discord.com/api/v10/channels/{}/messages?limit=20"

def fetch_messages(channel_id, user_token):
    headers = {
        "Authorization": user_token,
        "Content-Type": "application/json"
    }
    response = requests.get(DISCORD_API_URL.format(channel_id), headers=headers)

    if response.status_code == 200:
        return response.json()
    return None

@app.route('/fetch-jobid', methods=['POST'])
def get_job_id():
    data = request.json
    channel_id = data.get("channelId")
    user_token = data.get("userToken")
    target_boss = data.get("targetBoss")

    if not channel_id or not user_token:
        return jsonify({"error": "Missing channelId or userToken"}), 400

    messages = fetch_messages(channel_id, user_token)
    if not messages:
        return jsonify({"error": "Failed to fetch messages"}), 500

    for message in messages:
        if "embeds" in message and message["embeds"]:
            for embed in message["embeds"]:
                if "fields" in embed:
                    job_id = None
                    boss_name = None
                    for field in embed["fields"]:
                        if field["name"] in ["Job Id", "Jobid:"]:
                            job_id = field["value"].strip("`")
                        elif field["name"] in ["Boss Name", "Name Boss:"]:
                            boss_name = field["value"].strip("`")

                    if boss_name and job_id and boss_name == target_boss:
                        return jsonify({"jobId": job_id})

    return jsonify({"error": "No matching boss found"}), 404

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
