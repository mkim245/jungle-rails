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
  it("Select a product and go to a product-detail page", () => {
    cy.get(".products article a").first().click();
    cy.get(".product-detail").should("be.visible");
  })
})