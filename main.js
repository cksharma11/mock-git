const shell = require("shelljs");

const execCommand = (command, log) => {
  const commands = {
    init: () => {
      shell.exec(`mkdir .logs`);
      console.log("initialized");
    },
    log: () => {
      shell.exec(`tar -cf ./.logs/${log}.tar .`);
      console.log("Sucess");
    },
    logs: () => {
      shell.exec(`ls .logs`);
      console.log("Sucess");
    },
    checkout: () => {
      shell.exec(`tar -xvf .logs/${log}.tar`);
    }
  };

  return commands[command];
};

const main = () => {
  const args = process.argv.slice(2);
  const command = args[0];
  const log = args[1];
  execCommand(command, log)();
};

main();
