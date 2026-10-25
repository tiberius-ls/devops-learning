#!/data/data/com.termux/files/usr/bin/bash

echo "================================"
echo "     SYSTEM INFORMATION"
echo "================================"

echo "Date: $(date)"
echo "Operating system: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Home directory: $HOME"

echo
echo "Storage information:"
df -h "$HOME"

echo
echo "Disk usage of project directory:"
du -sh ~/projects/devops-learning

echo
echo "Git version:"
git --version

echo
echo "Python version:"
python --version

echo
echo "System check completed."
