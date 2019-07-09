component {
// this is my cfml app

this.name="dctest";
this.applicationTimeout=createTimeSpan(0,0,24,0);
this.sessionManagement=true;
this.sessionTimeout=createTimeSpan(0,0,30,0);

this.ormEnabled=false;
this.invokeImplicitAccessor=true;


// start error handling
function onError( any Exception, stringEventName){
  include 'error.cfm';
  var notifyEmail=new mail();
  notifyEmail.setTo('clumdakota@gmail.com');
  notifyEmail.setFrom('notice@notifydakota.com');
  notifyEmail.setSubject('An error occurred.');
  
  notifyEmail.setBody('
  Message: #arguments.exception.message# <br />
  Details: #arguments.exception.detail# <br />
  Type: #arguments.exception.type# <br />
  ');
  
  notifyEmail.setType('html');
  notifyEmail.send();
  }
  
  
}
