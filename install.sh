#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(cd "$(dirname "$0")" && pwd)"
TARGET="${HOME}/.claude"

echo "============================================"
echo "  Claude Code ECC 配置安装脚本"
echo "  Agents + Commands + Skills + Rules"
echo "============================================"
echo ""
echo "源目录: ${SOURCE}"
echo "目标目录: ${TARGET}"
echo ""

mkdir -p "${TARGET}"

install_dir() {
    local name="$1"
    local src="${SOURCE}/${name}"
    if [ -d "${src}" ]; then
        echo "[*] 安装 ${name}..."
        cp -r "${src}" "${TARGET}/${name}"
        echo "    完成"
    else
        echo "[ ] 跳过: ${name} 目录不存在"
    fi
}

install_dir "agents"
install_dir "commands"
install_dir "skills"
install_dir "rules"

echo ""
echo "============================================"
echo "  安装完成！"
echo "============================================"
echo ""
echo "请手动配置 ~/.claude/settings.json 后即可使用。"
