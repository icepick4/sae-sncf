create or replace TRIGGER DISCUSSION_SUPPORT_TRG 
BEFORE INSERT ON "DISCUSSION"
FOR EACH ROW
WHEN(new.DISCUSSION_ID IS NULL) BEGIN
  SELECT DISCUSSION_SUPPORT_SEQ.NEXTVAL
  INTO   :new.DISCUSSION_ID
  FROM   dual;
END;