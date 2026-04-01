FROM ghcr.io/openclaw/openclaw:2026.3.31

RUN apt-get update && apt-get install -y --no-install-recommends \
    # Video/audio processing
    ffmpeg \
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
    exiftool \
    # General media utilities
    curl \
    # Fonts
    fonts-noto \
    fonts-noto-cjk \
    fonts-noto-color-emoji \
    fonts-liberation \
    fonts-dejavu \
    fonts-freefont-ttf \
    fonts-twemoji \
    && fc-cache -fv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
