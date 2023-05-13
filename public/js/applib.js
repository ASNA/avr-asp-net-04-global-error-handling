"use strict";

var applib = applib || {};

applib = class Core {

    static removeAspNetCheckboxWrapper(selector) {
        // ASP.NET's checkbox control puts a span tag wrapper around
        // the checkbox. This wrapper disturbs correct Bootstrap 
        // checkbox behavior. This function removes that wrapper for 
        // a given checkbox element. 

        // Select all elements that match selector.
        const wrappedElements = document.querySelectorAll(selector);

        // For each selected element... 
        wrappedElements.forEach(wrappedElement => {
            const elementToRemove = wrappedElement.parentNode;

            const elementToMove = document.createDocumentFragment();
            elementToMove.appendChild(wrappedElement);

            // ASP.NET also removed this class name. This puts it back.
            wrappedElement.classList.add('form-check-input');
            elementToRemove.parentNode.replaceChild(elementToMove, elementToRemove);
        });
    }
}






