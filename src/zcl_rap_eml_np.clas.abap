CLASS zcl_rap_eml_np DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_np IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " not specific fields to read
*    READ ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel   " Entity to read
*    FROM VALUE #( ( TravelUUID = '35DC3660B4EFB944180076A6C57DDD4A' ) ) " Read with Key
*    RESULT DATA(lt_travels).    "   Result Table

    " specific fields to read
*    READ ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel   " Entity to read
*    FIELDS ( AgencyID BeginDate )   "   Fields to read
*    WITH VALUE #( ( TravelUUID = '35DC3660B4EFB944180076A6C57DDD4A' ) ) " Read with Key
*    RESULT DATA(lt_travels).    "   Result Table

    " read all fields
*    READ ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel   " Entity to read
*    ALL FIELDS   "   Fields to read
*    WITH VALUE #( ( TravelUUID = '35DC3660B4EFB944180076A6C57DDD4A' ) ) " Read with Key
*    RESULT DATA(lt_travels).    "   Result Table

    " read association
*    READ ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel BY \_Booking   " Association to read
*    ALL FIELDS   "   Fields to read
*    WITH VALUE #( ( TravelUUID = 'ZZ' ) ) " Read with Key
*    RESULT DATA(lt_travels)    "   Result Table
*    FAILED DATA(lw_failed)      "   Failed info
*    REPORTED DATA(lw_reported). "   Reported info

*    out->write( lt_travels ).

    " modify existing data
*    MODIFY ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel
*    UPDATE "   for update existing data
*    SET FIELDS WITH VALUE #( ( TravelUUID = '35DC3660B4EFB944180076A6C57DDD4A'  " have to specific key
*                               Description = 'Change from EML' ) )  "   changed field
*    FAILED DATA(lw_failed)      "   Failed info
*    REPORTED DATA(lw_reported). "   Reported info

    " have to commit work
*    COMMIT ENTITIES
*    RESPONSE OF zi_rap_travel_np   " BO name
*    FAILED DATA(lw_failed_commit)      "   Failed info
*    REPORTED DATA(lw_reported_commit). "   Reported info

    " create data
*    MODIFY ENTITIES OF zi_rap_travel_np   " BO name
*    ENTITY Travel
*    CREATE  " for create new
*    SET FIELDS WITH VALUE #( ( %cid = 'MyContentID_1'
*                               AgencyID = '70012'
*                               CustomerID = '14'
*                               BeginDate = cl_abap_context_info=>get_system_date( )
*                               EndDate = cl_abap_context_info=>get_system_date( ) + 10
*                               Description = 'Create from EML #2' ) )  "   changed field
*    MAPPED DATA(lw_mapped)      "   Created record
*    FAILED DATA(lw_failed)      "   Failed info
*    REPORTED DATA(lw_reported). "   Reported info

    " have to commit work
*    COMMIT ENTITIES
*    RESPONSE OF zi_rap_travel_np   " BO name
*    FAILED DATA(lw_failed_commit)      "   Failed info
*    REPORTED DATA(lw_reported_commit). "   Reported info
*
*    out->write( lw_mapped-travel ).

    " delete data
    MODIFY ENTITIES OF zi_rap_travel_np   " BO name
    ENTITY Travel
    DELETE  " for delete
    FROM VALUE #( ( TravelUUID = '1EACE85DF05C1EEDA0B60A566F501FA0' ) )  "   have to specific key
    FAILED DATA(lw_failed)      "   Failed info
    REPORTED DATA(lw_reported). "   Reported info

    " have to commit work
    COMMIT ENTITIES
    RESPONSE OF zi_rap_travel_np   " BO name
    FAILED DATA(lw_failed_commit)      "   Failed info
    REPORTED DATA(lw_reported_commit). "   Reported info

  ENDMETHOD.

ENDCLASS.
