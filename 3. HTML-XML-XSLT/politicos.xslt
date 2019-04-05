
 <xsl:stylesheet version="1.0"
 xmlns:pl="http://xml.cl/politico"
  xmlns:ty="http://xml.cl/trayectoria"
   xmlns:bl="http://xml.cl/bibliografia"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	  xmlns:hm="http://xml.cl/hemiciclo"
	 
	 >
     <xsl:template match="/">
        <html>
            <head>
                <title>Bigrafias Politicos</title>
  <!-- ///////////////////////////////////////////////////////////INICIO CSS  //////////////////////////////////////////////////// -->	 
                <style>
				  h1{

                        font-size: 22pt;
                        text-decoration: underline;
						color: black;
                        text-align:center;
                    }

                    h2{

                        font-size: 22pt;
                        text-decoration: underline;
						color: green;

                    }

                    div.valor_personal{
                        color: black;
					    float: left; 
					    border: 1px solid black;
                        background: #F2F2F2;
                        width: 200px;
                        padding: 0px;
                        margin: 0px;
                        font-size: 12pt;
                    }
                    div.dato_personal{
                        color: blue;
				        border: 1px solid black;
				        float: left; 
                        background: #F2F2F2;
                        width: 200px;
                        padding: 0px;
                        margin: 0px;
                        font-size: 12pt;
                    }
				    div.resenia_resumen_titulo{
                        color: black;
				        border: 0px solid black;
				        text-align:center;
                        width: 100%;
                        padding: 0px;
                        margin: 0px;
                        font-size: 14pt;
                    }
					div.resenia_resumen{
                        color: black;
				        border: 0px solid black;
				        text-align:justify;
                        font-weight: 300;
                        font-family: "Roboto Condensed", sans-serif;
                        width: 100%;
                        padding: 0px;
                        margin: 0px;
                        font-size: 12pt;
                    }
					
				    div.pantalla_izq{             
				        float: left; 
                        width: 40%;
                    }
                    div.pantalla_der{
                        float: left; 
                        width: 60%;
                    }
                       div.full{
                    width: 100%;
                    }					
                </style>
  <!-- ///////////////////////////////////////////////////////////FIN CSS  //////////////////////////////////////////////////// -->	 
            </head>
  <!-- ///////////////////////////////////////////////////////////INICIO BODY HTML //////////////////////////////////////////////////// -->	 
            <body>

                <xsl:apply-templates/>

            </body>
  <!-- ///////////////////////////////////////////////////////////FIN BODY HTML //////////////////////////////////////////////////// -->	 
        </html>
  <!-- ///////////////////////////////////////////////////////////INICIO DECLARACION POLITICOS //////////////////////////////////////////////////// -->	     
	</xsl:template>
	    <xsl:template match="politicos">
       
          <div class="full" >
              <h1><xsl:value-of select="@title"/></h1>
            <br></br>
                  <xsl:apply-templates select="pl:politico"/>
              
          </div>
		

         
     </xsl:template>
	 
	 <xsl:template match="pl:politico">
      
		 <div>
		  <h2><xsl:value-of select="@title"/></h2>
          <div  class="pantalla_izq">
            <div>
                  <xsl:apply-templates select="pl:datosPersonales"/>
              </div>
			  <div>
                  <xsl:apply-templates select="pl:trayectorias"/>
             </div>
			 </div> 
			 <div  class="pantalla_der">
			
			     <div>
                  <xsl:apply-templates select="pl:reseniaResumen"/>
              </div>
			  <br></br>
			       <div>
                  <xsl:apply-templates select="pl:familiaJuventud"/>
              </div>
			  	  <br></br>
			       <div>
                  <xsl:apply-templates select="pl:estudiosVidaLaboral"/>
              </div>
			  	  <br></br>
			       <div>
                  <xsl:apply-templates select="pl:trayectoriaPoliticaPublica"/>
              </div>
			  	  <br></br>
				      <div>
                  <xsl:apply-templates select="pl:hemiciclos"/>
              </div>
			   <br></br>
			   <div>
                  <xsl:apply-templates select="pl:bibliografias"/>
              </div>
			  </div>
			   </div>
			   <br></br>
			    <br></br>
				 <br></br>
				  <br></br>
                     
          <hr align="left" noshade="noshade" size="6" width="100%" />
     </xsl:template>
  <!-- ///////////////////////////////////////////////////////////FIN DECLARACION POLITICOS //////////////////////////////////////////////////// -->	
  <!-- ///////////////////////////////////////////////////////////DATOS PERSONALES //////////////////////////////////////////////////// -->	 
	 <!--INICIO TEMPLATE DATOS PERSONALES -->
	  <xsl:template match="pl:datosPersonales">
         
          <div>
		     <xsl:attribute name="itemscope">
                         <xsl:value-of select="@itemscope"/>
                    </xsl:attribute>
                    <xsl:attribute name="itemtype">
                         <xsl:value-of select="@itemtype"/>
                    </xsl:attribute>
		  <div>
              <h2><xsl:value-of select="@title"/></h2>
			   </div>
			    <div>
			    <xsl:apply-templates select="pl:img"/>
			   </div>
			    <br></br>
			    <div>
				   <xsl:apply-templates select="pl:nombres"/>
             </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:apellidoPaterno"/>
               </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:apellidoMaterno"/>
              </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:estadoCivil"/>
               </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:profesion"/>
                </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:nacionalidad"/>
                </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:fechaNacimiento"/>
              </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:lugarNacimiento"/>
              </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:fechaDefuncion"/>
               </div>
			    <br></br>
			    <div>
				 <xsl:apply-templates select="pl:lugarDefuncion"/>
                </div>
			    <br></br>
			     
          </div>             
         
     </xsl:template>
	 
 <!--FIN TEMPLATE DATOS PERSONALES -->	 
 <!--INICIO DECLARACIONES DATOS PERSONALES -->
	 <xsl:template match="pl:nombres">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >		    
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:apellidoPaterno">
		<div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:apellidoMaterno">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:estadoCivil">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:profesion">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:nacionalidad">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:fechaNacimiento">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 	 <xsl:template match="pl:lugarNacimiento">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	  	 <xsl:template match="pl:fechaDefuncion">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	  	 <xsl:template match="pl:lugarDefuncion">
		 <div>
	           <div class="dato_personal" >
			        <xsl:value-of select="@title"/>
			   </div>
		       <div class="valor_personal" >
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			        <xsl:value-of select="."/>
		        </div>
	     </div>
     </xsl:template>
	 <xsl:template match="pl:img">
		 <div> 
		    <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
            </xsl:attribute>
            <xsl:element name="img">
                 <xsl:attribute name="src">
                       <xsl:value-of select="@url"/>
                 </xsl:attribute>
                 <xsl:attribute name="height">
                  300
                 </xsl:attribute>
            </xsl:element>
	     </div>
     </xsl:template>	 
 <!--FIN DECLARACIONES DATOS PERSONALES -->	 
 <!-- /////////////////////////////////////////////////////////// FIN DATOS PERSONALES //////////////////////////////////////////////////// -->	 	
 <!-- /////////////////////////////////////////////////////////// INICIO TRAYECTORIA  //////////////////////////////////////////////////// -->	 	
 <!--INICIO TEMPLATE TRAYECTORIA -->
	  <xsl:template match="pl:trayectorias">
       
          <div>
              <h2><xsl:value-of select="@title"/></h2>
             
                  <xsl:apply-templates select="pl:trayectoria"/>
             
          </div>             
        
     </xsl:template>
	 
	   <xsl:template match="pl:trayectoria">
     
          <div>
              <h2><xsl:value-of select="@title"/></h2>
              <div>
                    <xsl:apply-templates select="ty:tipoParlamentario"/> 
              </div>
			  <br></br>
			      <div>
                    <xsl:apply-templates select="ty:partidoPolitico"/> 
              </div>
			  <br></br>
			      <div>
                    <xsl:apply-templates select="ty:periodoInicio"/> 
              </div>
			  <br></br>
			      <div>
                    <xsl:apply-templates select="ty:periodoTermino"/> 
              </div>
			  <br></br>
			      <div>
                    <xsl:apply-templates select="ty:divisionElectoral"/> 
              </div>
			  
          </div>             
        
     </xsl:template>
 <!--FIN TEMPLATE TRAYECTORIA -->
 <!--INICIO DECLARACIONES DATOS TRAYECTORIA -->
  <xsl:template match="ty:tipoParlamentario">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
	 
	   <xsl:template match="ty:partidoPolitico">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
	   <xsl:template match="ty:periodoInicio">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
	   <xsl:template match="ty:periodoTermino">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
	   <xsl:template match="ty:divisionElectoral">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
 
 <!--FIN DECLARACIONES DATOS TRAYECTORIA -->   
	 
 <!-- /////////////////////////////////////////////////////////// FIN TRAYECTORIA //////////////////////////////////////////////////// -->	
 <!-- /////////////////////////////////////////////////////////// INICIO RESUMEN //////////////////////////////////////////////////// -->	
    <xsl:template match="pl:reseniaResumen">
		 <div>
		     <xsl:attribute name="itemscope">
                         <xsl:value-of select="@itemscope"/>
                    </xsl:attribute>
                    <xsl:attribute name="itemtype">
                         <xsl:value-of select="@itemtype"/>
                    </xsl:attribute>
	        <div class="resenia_resumen_titulo" ><xsl:value-of select="@title"/></div>
			<br></br>
		    <div class="resenia_resumen">
			        <xsl:attribute name="itemprop">
                         <xsl:value-of select="@itemprop"/>
                    </xsl:attribute>
			   <xsl:value-of select="."/>
			</div>
	     </div>
     </xsl:template>
 <!-- /////////////////////////////////////////////////////////// FIN RESUMEN  //////////////////////////////////////////////////// -->	 
 <!-- /////////////////////////////////////////////////////////// INICIO FAMILIA Y JUVENTUD //////////////////////////////////////////////////// -->	
    <xsl:template match="pl:familiaJuventud">
		 <div>
	        <div class="resenia_resumen_titulo" ><xsl:value-of select="@title"/></div>
			<br></br>
		    <div class="resenia_resumen"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
 <!-- /////////////////////////////////////////////////////////// FIN FAMILIA Y JUVENTUD   //////////////////////////////////////////////////// -->	
 <!-- /////////////////////////////////////////////////////////// INICIO ESTUDIO Y VIDA LABORAL //////////////////////////////////////////////////// -->	
    <xsl:template match="pl:estudiosVidaLaboral">
		 <div>
	        <div class="resenia_resumen_titulo" ><xsl:value-of select="@title"/></div>
			<br></br>
		    <div class="resenia_resumen"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
 <!-- /////////////////////////////////////////////////////////// FIN ESTUDIO Y VIDA LABORAL  //////////////////////////////////////////////////// -->	
 <!-- /////////////////////////////////////////////////////////// INICIO TRAYECTORIA Y POLITICAS PUBLICAS //////////////////////////////////////////////////// -->	
    <xsl:template match="pl:trayectoriaPoliticaPublica">
		 <div>
	        <div class="resenia_resumen_titulo" ><xsl:value-of select="@title"/></div>
			<br></br>
		    <div class="resenia_resumen"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
 <!-- /////////////////////////////////////////////////////////// FIN TRAYECTORIA Y POLITICAS PUBLICAS  //////////////////////////////////////////////////// -->
  <!-- /////////////////////////////////////////////////////////// INICIO TEMPLATES HEMICICLOS  //////////////////////////////////////////////////// -->
  
  <xsl:template match="pl:hemiciclos">
       
         <div>
              <div class="resenia_resumen_titulo"><xsl:value-of select="@title"/></div>
              <div>
                  <xsl:apply-templates select="pl:hemiciclo"/>    
          </div>
   </div>		  
       
     </xsl:template>
	 
	   <xsl:template match="pl:hemiciclo">
     
          <div>
              <h2><xsl:value-of select="@title"/></h2>
              <div>
                    <xsl:apply-templates select="hm:periodoInicio"/> 
              </div>
			 <br></br>
			  <div>
                    <xsl:apply-templates select="hm:periodoTermino"/> 
              </div>
			 <br></br>
			  <div>
                    <xsl:apply-templates select="hm:descripcion"/> 
              </div>
			 <br></br>
          </div>             
        
     </xsl:template>
  <!-- /////////////////////////////////////////////////////////// FIN TEMPLATES HEMICICLOS //////////////////////////////////////////////////// -->	 
  
<!-- /////////////////////////////////////////////////////////// INICIO DATOS HEMICICLO  //////////////////////////////////////////////////// -->
 <xsl:template match="hm:periodoInicio">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
	  <xsl:template match="hm:periodoTermino">
		 <div>
	        <div class="dato_personal" ><xsl:value-of select="@title"/></div>
		    <div class="valor_personal"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
    <xsl:template match="hm:descripcion">
		 <div>
		    <div class="resenia_resumen"><xsl:value-of select="."/></div>
	     </div>
     </xsl:template>
<!-- /////////////////////////////////////////////////////////// FIN DATOS HEMICICLO  //////////////////////////////////////////////////// -->
  <!-- /////////////////////////////////////////////////////////// INICIO TEMPLATES BIBLIOGRAFIA  //////////////////////////////////////////////////// -->
    <xsl:template match="pl:bibliografias">
       
          <div>
              <div class="resenia_resumen_titulo" ><xsl:value-of select="@title"/></div>   
			  <br></br>
                <div class="resenia_resumen">  <xsl:apply-templates select="pl:bibliografia"/></div>
          </div>   
<br></br><br></br><br></br><br></br>          
       
     </xsl:template>
	 
	   <xsl:template match="pl:bibliografia">

                      (<xsl:apply-templates select="bl:ano"/>).
					  <xsl:apply-templates select="bl:nombre"/>.
					  <xsl:apply-templates select="bl:editorial"/>.
					  <xsl:apply-templates select="bl:descripcion"/>.
					  <xsl:apply-templates select="bl:isbn"/>;
                      <xsl:apply-templates select="bl:disponible"/> .
 Disponible en:   <a>
                 <xsl:attribute name="href">
                     <xsl:value-of select="@seotitle"/>
                </xsl:attribute>
              <xsl:value-of select="@seotitle"/></a>
<br></br>					  
                 
        
     </xsl:template>
  <!-- /////////////////////////////////////////////////////////// FIN TEMPLATES BIBLIOGRAFIA  //////////////////////////////////////////////////// -->
  <!-- /////////////////////////////////////////////////////////// INICIO DATOS BIBLIOGRAFIA  //////////////////////////////////////////////////// -->
   <xsl:template match="bl:nombre">
			        <xsl:value-of select="."/>
     </xsl:template>
	    <xsl:template match="bl:editorial">
			        <xsl:value-of select="."/>

     </xsl:template>
	    <xsl:template match="bl:ano">
			        <xsl:value-of select="."/>
     </xsl:template>
	    <xsl:template match="bl:descripcion">
			        <xsl:value-of select="."/>
     </xsl:template>
	    <xsl:template match="bl:isbn">
		 <xsl:value-of select="@title"/>:
		       
			        <xsl:value-of select="."/>
		      
	   
     </xsl:template>
	    <xsl:template match="bl:disponible">
		       
			     
			        <xsl:value-of select="."/>
		    
     </xsl:template>
  <!-- /////////////////////////////////////////////////////////// FIN DATOS BIBLIOGRAFIA  //////////////////////////////////////////////////// -->

 </xsl:stylesheet>
