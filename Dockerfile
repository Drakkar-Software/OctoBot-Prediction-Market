ARG BASE_IMAGE_TAG=stable
FROM drakkarsoftware/octobot:$BASE_IMAGE_TAG AS base

WORKDIR /

# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"

COPY . .
RUN pip install --no-cache-dir -U setuptools wheel pip>=20.0.0 \
    && pip install --no-cache-dir --prefer-binary -r requirements.txt \
    && python setup.py install \
    && mv /opt/venv/bin/OctoBot_Prediction_Market /opt/venv/bin/OctoBot

FROM drakkarsoftware/octobot:$BASE_IMAGE_TAG

WORKDIR /octobot

# Import python dependencies
COPY --from=base /opt/venv /opt/venv

# Add default config files
COPY octobot_prediction_market/config/default_config.json /octobot/octobot/config/default_config.json
