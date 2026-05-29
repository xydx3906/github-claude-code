# Claude Code ECC 配置仓库

我的 Claude Code 完整配置，包含智能体、技能、命令和规则，方便在新机器上一键安装。

## 内容

| 组件 | 数量 | 说明 |
|------|------|------|
| 🤖 Agents | 60 个 | 代码审查、构建修复、架构规划、测试等专业智能体 |
| ⚡ Commands | 86 个 | 内建斜杠命令和技能定义 |
| 🛠️ Skills | 179 个 | ECC 技能参考文档（语言/框架/领域） |
| 📋 Rules | 105 个文件 | 编码规范、安全、测试、Git 工作流等规则 |

## 快速安装

### Windows
双击 `install.bat`

### Linux / Mac / WSL
```bash
bash install.sh
```

## 目录结构

```
claude-config/
├── agents/          # 60 个智能体定义
├── commands/        # 86 个命令/技能入口
├── skills/          # 179 个技能参考 (ecc/)
├── rules/           # 105 个规则文件 (ecc/)
├── install.bat      # Windows 安装脚本
├── install.sh       # Unix 安装脚本
└── settings.json.example  # 配置参考
```

## 规则层级

```
rules/ecc/
├── common/       # 通用规则（编码风格、Git、测试、安全等）
├── zh/           # 中文翻译版本
├── typescript/   # TypeScript/JavaScript
├── python/       # Python
├── golang/       # Go
├── rust/         # Rust
├── swift/        # Swift
├── dart/         # Dart/Flutter
├── java/         # Java
├── kotlin/       # Kotlin
├── cpp/          # C++
├── csharp/       # C#
├── fsharp/       # F#
├── php/          # PHP
├── web/          # 前端/Web
├── arkts/        # HarmonyOS/ArkTS
├── angular/      # Angular
└── perl/         # Perl
```
