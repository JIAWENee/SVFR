# --- 视频分割脚本 ---
INPUT_VIDEO="./assert/lq/fr.mp4"
CLIPS_DIR="./original_clips"
SEGMENT_DURATION=10 # 每个片段10秒

echo "开始分割视频: ${INPUT_VIDEO}"

ffmpeg -i "${INPUT_VIDEO}" -c copy -map 0 -f segment -segment_time ${SEGMENT_DURATION} -reset_timestamps 1 "${CLIPS_DIR}/clip_%03d.mp4"

echo "视频分割完成，片段保存在: ${CLIPS_DIR}"