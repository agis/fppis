/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("textfield",function(a){var b={value:1,size:1,maxLength:1},c={text:1,password:1};return{title:a.lang.textfield.title,minWidth:350,minHeight:150,onShow:function(){var a=this;delete a.textField;var b=a.getParentEditor().getSelection().getSelectedElement();b&&b.getName()=="input"&&(c[b.getAttribute("type")]||!b.getAttribute("type"))&&(a.textField=b,a.setupContent(b))},onOk:function(){var a,b=this.textField,c=!b;c&&(a=this.getParentEditor(),b=a.document.createElement("input"),b.setAttribute("type","text")),c&&a.insertElement(b),this.commitContent({element:b})},onLoad:function(){var a=function(a){var b=a.hasAttribute(this.id)&&a.getAttribute(this.id);this.setValue(b||"")},c=function(a){var b=a.element,c=this.getValue();c?b.setAttribute(this.id,c):b.removeAttribute(this.id)};this.foreach(function(f){b[f.id]&&(f.setup=a,f.commit=c)})},contents:[{id:"info",label:a.lang.textfield.title,title:a.lang.textfield.title,elements:[{type:"hbox",widths:["50%","50%"],children:[{id:"_cke_saved_name",type:"text",label:a.lang.textfield.name,"default":"",accessKey:"N",setup:function(a){this.setValue(a.data("cke-saved-name")||a.getAttribute("name")||"")},commit:function(a){var b=a.element;this.getValue()?b.data("cke-saved-name",this.getValue()):(b.data("cke-saved-name",!1),b.removeAttribute("name"))}},{id:"value",type:"text",label:a.lang.textfield.value,"default":"",accessKey:"V"}]},{type:"hbox",widths:["50%","50%"],children:[{id:"size",type:"text",label:a.lang.textfield.charWidth,"default":"",accessKey:"C",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(a.lang.common.validateNumberFailed)},{id:"maxLength",type:"text",label:a.lang.textfield.maxChars,"default":"",accessKey:"M",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(a.lang.common.validateNumberFailed)}],onLoad:function(){CKEDITOR.env.ie7Compat&&this.getElement().setStyle("zoom","100%")}},{id:"type",type:"select",label:a.lang.textfield.type,"default":"text",accessKey:"M",items:[[a.lang.textfield.typeText,"text"],[a.lang.textfield.typePass,"password"]],setup:function(a){this.setValue(a.getAttribute("type"))},commit:function(b){var c=b.element;if(CKEDITOR.env.ie){var d=c.getAttribute("type"),e=this.getValue();if(d!=e){var f=CKEDITOR.dom.element.createFromHtml('<input type="'+e+'"></input>',a.document);c.copyAttributes(f,{type:1}),f.replace(c),a.getSelection().selectElement(f),b.element=f}}else c.setAttribute("type",this.getValue())}}]}]}});