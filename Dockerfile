ARG BASE_IMAGE_TAG=stable
FROM drakkarsoftware/octobot:$BASE_IMAGE_TAG

WORKDIR /octobot

ENV DEFAULT_CONFIG_FILE=/octobot/octobot/config/default_config.json
COPY octobot_prediction_market/config/default_config.json /octobot/octobot/config/default_config.json
