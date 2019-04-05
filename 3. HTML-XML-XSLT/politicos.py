import lxml.html
from lxml import etree
 
xslt_doc = etree.parse("tarea/politicos.xslt")
xslt_transformer = etree.XSLT(xslt_doc)
 
source_doc = etree.parse("tarea/politicos.xml")
output_doc = xslt_transformer(source_doc)
 
print(str(output_doc))
output_doc.write("tarea/politicos.html", pretty_print=True)
