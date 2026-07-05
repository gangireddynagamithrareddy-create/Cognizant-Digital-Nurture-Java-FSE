package com.cognizant.designpatterns;

public class ConcreteDocumentFactory extends DocumentFactory {

    private String type;

    public ConcreteDocumentFactory(String type) {
        this.type = type;
    }

    @Override
    public Document createDocument() {

        if (type.equalsIgnoreCase("Word")) {
            return new WordDocument();
        } else if (type.equalsIgnoreCase("PDF")) {
            return new PdfDocument();
        } else if (type.equalsIgnoreCase("Excel")) {
            return new ExcelDocument();
        } else {
            return null;
        }
    }
}
