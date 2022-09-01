describe('home spec', () => {
  beforeEach(() => {
    cy.visit("/");
  })

  it("should visit root", () => {
    cy.visit("/");
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 2 products on the page", () => {
      cy.get(".products article").should("have.length", 2);
  });
  it("Click add-to-cart and increase cart by one", () => {
    cy.contains("Add").click({force: true})
    cy.get(".nav-link").contains("My Cart (1)");
  })
})