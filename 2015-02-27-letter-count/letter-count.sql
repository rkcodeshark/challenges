CREATE  FUNCTION [dbo].[fn_LetterCount]  (@strLetter NVARCHAR(MAX))  
RETURNS NVARCHAR(MAX) AS
 
BEGIN 

        DECLARE        @strTmpWord NVARCHAR(MAX),
                        @strChar NCHAR(1),
                        @iWordCounter INT,
                        @iCounter INT, 
                        @ilen INT,
                        @strFinalWord  NVARCHAR(MAX),
                        @strChar1 NCHAR(1)
                
                /*
                        1. Separate out words from the sentence
                        2. Loop through the words to find repeating characters
                        3. Ignore punctuation and other special characters. here I have cosidered only alpha-numeric characters
                        4. Return NULL if words in sentence don't have any repeating character.
                        5. Final output will still have punctuation in words if any
                */

                SELECT @ilen = 0, @iCounter = 0      
                WHILE(@iCounter < LEN(@strLetter)+1)

                        BEGIN
         
                          SELECT @strChar = SUBSTRING(@strLetter,@iCounter,1)
                          IF(@strChar != ' ' AND @iCounter != LEN(@strLetter) )
                          BEGIN
                                                SET @strTmpWord = @strTmpWord + @strChar
                          END
                          /*We have separated out the word from a sentence. Now check for repeating characters*/
                          ELSE IF(@iCounter = len(@strLetter) OR @strChar = ' ')
                          BEGIN                                        
                              SET @iWordCounter = 1
                              While(@iWordCounter <len(@strTmpWord)+1)
                              BEGIN
                                  Select @strChar1 = SUBSTRING(@strTmpWord,@iWordCounter,1)
                                  /* Checks for repeating character + Ignoring punctuations + making sure we have atleast one repeating character */
                                  IF(                LEN(@strTmpWord)-LEN(REPLACE(@strTmpWord,@strChar1,''))>@ilen 
                                      AND PATINDEX('%[^a-z^0-9 ]%', @strChar1)=0 
                                      AND LEN(REPLACE(@strTmpWord,@strChar1,''))<LEN(@strTmpWord)-1
                                  )
                                  BEGIN                                                        
                                      Select @ilen = LEN(@strTmpWord)-LEN(REPLACE(@strTmpWord,@strChar1,''))
                                      Select @strFinalWord =  @strTmpWord
                                  END
                                  Set @iWordCounter = @iWordCounter +1
                              END
                              SET @strTmpWord=''
                          END
                          SET @iCounter = @iCounter + 1
                          SET @strChar = ''
                        END
                RETURN  @strFinalWord

END
