package com.cognizant.designpatterns;

public class FactoryMethodPatternExample {

    public static void main(String[] args) {

        DocumentFactory wordFactory = new ConcreteDocumentFactory("Word");
        Document word = wordFactory.createDocument();
        word.open();

        DocumentFactory pdfFactory = new ConcreteDocumentFactory("PDF");
        Document pdf = pdfFactory.createDocument();
        pdf.open();

        DocumentFactory excelFactory = new ConcreteDocumentFactory("Excel");
        Document excel = excelFactory.createDocument();
        excel.open();
    }
}