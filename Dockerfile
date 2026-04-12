FROM ghcr.io/openclaw/openclaw:2026.4.2

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    # Video/audio processing
    ffmpeg \
    sox \
    yt-dlp \
    # Image processing
    imagemagick \
    python3-pil \
    libmagickwand-dev \
    gifsicle \
    webp \
    # OCR
    tesseract-ocr \
    tesseract-ocr-eng \
    tesseract-ocr-fra \
    # PDF tools
    poppler-utils \
    ghostscript \
    # Metadata
    libimage-exiftool-perl \
    # TTS
    espeak-ng \
    # General media utilities
    curl \
    # Fonts
    fonts-noto \
    fonts-noto-cjk \
    fonts-noto-color-emoji \
    fonts-liberation \
    fonts-dejavu \
    fonts-freefont-ttf \
    fonts-noto-extra \
    jq yq \
    && fc-cache -fv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER node
