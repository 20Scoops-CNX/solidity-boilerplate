const fs = require("fs");
const path = require("path");
const Generator = require("yeoman-generator");

class AppGenerator extends Generator {
  constructor(args, options) {
    super(args, options);
    this.sourceRoot(path.resolve(__dirname, "../../"));
  }

  writing() {
    console.log("this.sourceRoot()", this.sourceRoot());
    fs.readdir(this.sourceRoot(), (err, items) => {
      const excluedFiles = ["node_modules", "build", "coverage", "coverage.json", ".env.truffle.local", ".git", "generators"];
      console.log("items", items);
      items.filter(item => !excluedFiles.includes(item)).forEach(item => {
        const filePath = this.templatePath(item);
        this.fs.copy(filePath, this.destinationPath(item));
      });
    });
  }

  install() {
    this.yarnInstall();
  }
}

module.exports = AppGenerator;