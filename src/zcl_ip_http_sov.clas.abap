class ZCL_IP_HTTP_SOV definition
  public
  create public .

public section.

  interfaces IF_HTTP_SERVICE_EXTENSION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IP_HTTP_SOV IMPLEMENTATION.


  method IF_HTTP_SERVICE_EXTENSION~HANDLE_REQUEST.

  RESPONSE->set_text( 'Hello World' ) .
  endmethod.
ENDCLASS.
