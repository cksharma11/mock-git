const shell = require("shelljs");

const help = () => {
  console.log(`init - initialize .logs directory`);
  console.log(`log $message - log a commit (without space)`);
  console.log(`logs - list logs`);
  console.log(`checkout $commit- checkout to commit`);
};

const createCommand = (task, log) => {
  const commands = {
    init: () => shell.exec(`mkdir .logs`),
    commit: () => shell.exec(`tar -cf ./.logs/${log}.tar .`),
    logs: () => shell.exec(`ls .logs`),
    checkout: () => shell.exec(`tar -xvf .logs/${log}.tar`),
    help: () => help
  };

  return commands[task];
};

const main = () => {
  const args = process.argv.slice(2);
  const task = args[0];
  const log = args[1];
  const command = createCommand(task, log);
  command();
  console.log(`task executed ✔`);
};

main();
