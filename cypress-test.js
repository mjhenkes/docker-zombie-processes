const cypress = require('cypress');
const TEST_FOLDER_PATH = process.cwd() + '/cypress/integration/';

(async () => {
    while (true) {
        const result = await cypress.run({
            spec: TEST_FOLDER_PATH + 'spec.js',
            video: false
        });
    }
})();
