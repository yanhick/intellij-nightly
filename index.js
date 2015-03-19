var child_process = require('child_process');

function triggerNightlyBuild () {
    child_process.execFile('./nightly.sh', function (err, stdout, stderr) {
        console.log('START');
        console.log(stdout);
        console.log(stderr);
        console.log('DONE');
    });
}

/** execute script daily */
setInterval(triggerNightlyBuild, 1000 * 60 * 60 * 24);

/** execute on start */
triggerNightlyBuild();
