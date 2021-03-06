import { defineSupportCode } from 'cucumber';
import { browser } from 'protractor';
import { LoginPage } from '../pages/login.po';
import { expect } from 'chai';


let loginPage: LoginPage;

defineSupportCode(({ Before, Given, When, Then }) => {

    Before(() => {
        loginPage = new LoginPage();
    });

    Given('the user is in login Page', () => {
        browser.get('/');
    });

    Given('the user set the email to {string}', (email) => {
        loginPage.setValue(loginPage.inputEmail, email);
    });

    Given('the user set the password to {string}', (pass) => {
        loginPage.setValue(loginPage.inputPassword, pass);
    });

    When('the user click in login button', () => {
        loginPage.btnLogin.click();
    });

    Then('the user should see the correct message', (done) => {

        loginPage.message.isPresent().then(() => {
            loginPage.message.getText().then(text => {
                expect(text).to.be.equal('Correcto');
                done();
            });
        });
    });
});

defineSupportCode(({Before, Given, When, Then}) => {

    Then('the user should see the Incorrect message', (done) => {

        loginPage.message.isPresent().then(() => {
            loginPage.message.getText().then(text => {
                expect(text).to.be.equal('Incorrecto');
                done();
            });
        });
    });
});

