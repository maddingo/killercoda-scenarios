describe('Preparation', () => {
    before(() => {
        cy.startScenario()
    });

    it('finds the content "Start Scneario"', () => {
        cy.contains('Start Scenario');
    });

    it('finds can run commands', () => {
        cy.terminalType("uname");

        cy.terminalShouldContain('Linux')
    });
})