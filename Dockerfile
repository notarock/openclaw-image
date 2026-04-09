FROM ghcr.io/openclaw/openclaw:2026.4.9

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    # Video/audio processing
    ffmpeg \
    sox \
    yt-dlp \
    # Image processing
    imagemagick \
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
    fonts-emoji-gtk \
    fonts-unifont \
    jq yq \
    && fc-cache -fvs \
    && convert -list font | grep -i emoji || echo "Warning: No emoji fonts found in ImageMagick" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER node
