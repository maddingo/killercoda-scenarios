describe('Preparation', () => {
    before(() => {
        cy.startScenario()
    });

    it('finds the content "Start Scneario"', () => {
        cy.contains('Start Scenario');
    });

    it('finds the prepared code', () => {
        cy.terminalType("ls");

        cy.terminalShouldContain('api-handling')
    });
})