component {
// this is my cfml app

this.name="dctest";
this.applicationTimeout=createTimeSpan(0,0,24,0);
this.sessionManagement=true;
this.sessionTimeout=createTimeSpan(0,0,30,0);

this.ormEnabled=false;
this.invokeImplicitAccessor=true;
}
