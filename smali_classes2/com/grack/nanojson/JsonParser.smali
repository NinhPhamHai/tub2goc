.class public final Lcom/grack/nanojson/JsonParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/grack/nanojson/JsonParser$JsonParserContext;,
        Lcom/grack/nanojson/JsonParser$Token;
    }
.end annotation


# static fields
.field private static final FALSE:[C

.field private static final NULL:[C

.field private static final TRUE:[C


# instance fields
.field private final buffer:[C

.field private bufferLength:I

.field private charOffset:I

.field private eof:Z

.field private index:I

.field private lazyNumbers:Z

.field private linePos:I

.field private final reader:Ljava/io/Reader;

.field private reusableBuffer:Ljava/lang/StringBuilder;

.field private rowPos:I

.field private token:Lcom/grack/nanojson/JsonParser$Token;

.field private tokenCharOffset:I

.field private tokenCharPos:I

.field private tokenLinePos:I

.field private final utf8:Z

.field private utf8adjust:I

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/grack/nanojson/JsonParser;->TRUE:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/grack/nanojson/JsonParser;->FALSE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/grack/nanojson/JsonParser;->NULL:[C

    return-void

    :array_0
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method constructor <init>(ZZLjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonParser;->utf8:Z

    iput-boolean p2, p0, Lcom/grack/nanojson/JsonParser;->lazyNumbers:Z

    iput-object p3, p0, Lcom/grack/nanojson/JsonParser;->reader:Ljava/io/Reader;

    const p1, 0x8000

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->refillBuffer()Z

    move-result p1

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonParser;->eof:Z

    return-void
.end method

.method private advanceChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonParser;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->rowPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    :cond_1
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->refillBuffer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonParser;->eof:Z

    :cond_2
    return v0
.end method

.method private advanceToken()Lcom/grack/nanojson/JsonParser$Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceChar()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->tokenLinePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int v3, v1, v2

    iget v4, p0, Lcom/grack/nanojson/JsonParser;->rowPos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/grack/nanojson/JsonParser;->tokenCharPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->tokenCharOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    if-eq v0, v1, :cond_13

    const/16 v1, 0x5b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_d

    const/16 v1, 0x66

    if-eq v0, v1, :cond_c

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x74

    if-eq v0, v1, :cond_a

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->isAsciiLetter(I)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-char v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/grack/nanojson/JsonParser;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected character: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->COLON:Lcom/grack/nanojson/JsonParser$Token;

    :goto_1
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    return-object v0

    :pswitch_1
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->consumeTokenNumber(C)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->NUMBER:Lcom/grack/nanojson/JsonParser$Token;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->COMMA:Lcom/grack/nanojson/JsonParser$Token;

    goto :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Numbers may not start with \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    if-eq v1, v4, :cond_9

    :goto_2
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->STRING:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v4

    sget-object v5, Lcom/grack/nanojson/JsonParser$Token;->COLON:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v4, v5, :cond_7

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v1, v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->COMMA:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v1, v4, :cond_6

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_END:Lcom/grack/nanojson/JsonParser$Token;

    if-eq v1, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Trailing object found in array"

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a comma or end of the object instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected COLON, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected STRING, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_9
    :goto_3
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->OBJECT_START:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_a
    int-to-char v0, v0

    sget-object v1, Lcom/grack/nanojson/JsonParser;->TRUE:[C

    invoke-direct {p0, v0, v1}, Lcom/grack/nanojson/JsonParser;->consumeKeyword(C[C)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->TRUE:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_b
    int-to-char v0, v0

    sget-object v1, Lcom/grack/nanojson/JsonParser;->NULL:[C

    invoke-direct {p0, v0, v1}, Lcom/grack/nanojson/JsonParser;->consumeKeyword(C[C)V

    iput-object v3, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->NULL:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_c
    int-to-char v0, v0

    sget-object v1, Lcom/grack/nanojson/JsonParser;->FALSE:[C

    invoke-direct {p0, v0, v1}, Lcom/grack/nanojson/JsonParser;->consumeKeyword(C[C)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->FALSE:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    if-eq v1, v4, :cond_12

    :goto_4
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v1, v4, :cond_f

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->COMMA:Lcom/grack/nanojson/JsonParser$Token;

    if-ne v1, v4, :cond_11

    :try_start_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_END:Lcom/grack/nanojson/JsonParser$Token;

    if-eq v1, v4, :cond_10

    goto :goto_4

    :cond_10
    const-string v0, "Trailing comma found in array"

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a comma or end of the array instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_12
    :goto_5
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->ARRAY_START:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_13
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->consumeTokenString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->STRING:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :cond_14
    sget-object v0, Lcom/grack/nanojson/JsonParser$Token;->EOF:Lcom/grack/nanojson/JsonParser$Token;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private consumeKeyword(C[C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    array-length v0, p2

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->ensureBuffer(I)I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    :goto_0
    array-length v0, p2

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    aget-char v1, p2, v2

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonParser;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->fixupAfterRawBufferRead()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->peekChar()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->isAsciiLetter(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    array-length v0, p2

    invoke-direct {p0, p1, p2, v0}, Lcom/grack/nanojson/JsonParser;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonParser;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method

.method private consumeTokenNumber(C)Ljava/lang/Number;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x14

    invoke-direct {v1, v3}, Lcom/grack/nanojson/JsonParser;->ensureBuffer(I)I

    move-result v3

    const/16 v4, 0x2e

    const/16 v5, 0x45

    const/16 v6, 0x65

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    move v8, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_23

    iget-object v9, v1, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v10, v1, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v9, v9, v10

    invoke-direct {v1, v9}, Lcom/grack/nanojson/JsonParser;->isDigitCharacter(I)Z

    move-result v10

    if-nez v10, :cond_20

    move v0, v8

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/grack/nanojson/JsonParser;->fixupAfterRawBufferRead()V

    iget-object v3, v1, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    const/16 v9, 0x2d

    const-string v10, "Malformed number: "

    const/16 v11, 0x39

    const/16 v12, 0x30

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v0, v14, :cond_1

    move v14, v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/4 v15, -0x1

    const/4 v2, 0x6

    const/4 v7, 0x5

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-lt v0, v12, :cond_2

    if-gt v0, v11, :cond_2

    :goto_5
    const/16 v13, 0x8

    goto/16 :goto_c

    :cond_2
    if-nez v0, :cond_f

    goto :goto_8

    :pswitch_1
    const/16 v7, 0x2b

    if-eq v0, v7, :cond_4

    if-ne v0, v9, :cond_3

    if-ne v13, v2, :cond_3

    goto :goto_6

    :cond_3
    if-lt v0, v12, :cond_f

    if-gt v0, v11, :cond_f

    goto :goto_5

    :cond_4
    :goto_6
    const/4 v0, 0x7

    const/4 v13, 0x7

    goto :goto_c

    :pswitch_2
    if-lt v0, v12, :cond_5

    if-gt v0, v11, :cond_5

    const/4 v13, 0x5

    goto :goto_c

    :cond_5
    if-nez v0, :cond_6

    if-ne v13, v7, :cond_6

    goto :goto_8

    :cond_6
    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_f

    :cond_7
    if-ne v13, v7, :cond_f

    goto :goto_a

    :pswitch_3
    if-lt v0, v12, :cond_8

    if-gt v0, v11, :cond_8

    if-ne v13, v8, :cond_8

    :goto_7
    const/4 v13, 0x2

    goto :goto_c

    :cond_8
    if-ne v0, v4, :cond_9

    const/4 v0, 0x4

    const/4 v13, 0x4

    goto :goto_c

    :cond_9
    if-eq v0, v6, :cond_c

    if-ne v0, v5, :cond_a

    goto :goto_a

    :cond_a
    if-nez v0, :cond_f

    :goto_8
    iget-boolean v0, v1, Lcom/grack/nanojson/JsonParser;->lazyNumbers:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/grack/nanojson/JsonLazyNumber;

    invoke-direct {v0, v3}, Lcom/grack/nanojson/JsonLazyNumber;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_c
    :goto_a
    const/4 v13, 0x6

    goto :goto_c

    :pswitch_4
    if-ne v0, v9, :cond_d

    if-nez v13, :cond_d

    const/4 v13, 0x1

    goto :goto_c

    :cond_d
    if-ne v0, v12, :cond_e

    const/4 v0, 0x3

    const/4 v13, 0x3

    goto :goto_c

    :cond_e
    if-lt v0, v12, :cond_f

    if-gt v0, v11, :cond_f

    goto :goto_7

    :cond_f
    :goto_b
    const/4 v13, -0x1

    :goto_c
    if-eq v13, v15, :cond_10

    move v0, v14

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_10
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v12, :cond_12

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v11, :cond_12

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v4}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v12, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_15

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_15

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_14

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v4}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_15
    iget-boolean v0, v1, Lcom/grack/nanojson/JsonParser;->lazyNumbers:Z

    if-eqz v0, :cond_16

    new-instance v0, Lcom/grack/nanojson/JsonLazyNumber;

    invoke-direct {v0, v3}, Lcom/grack/nanojson/JsonLazyNumber;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    goto :goto_e

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_e
    const/16 v5, 0xa

    if-lt v4, v5, :cond_1e

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1a

    if-eqz v0, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_19
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_1a

    goto :goto_11

    :cond_1a
    const/16 v5, 0x13

    if-lt v4, v5, :cond_1d

    const/16 v5, 0x13

    if-ne v4, v5, :cond_1c

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v11, :cond_1c

    goto :goto_10

    :cond_1c
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1d
    :goto_10
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v4}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_20
    if-eq v9, v4, :cond_22

    if-eq v9, v6, :cond_22

    if-ne v9, v5, :cond_21

    goto :goto_12

    :cond_21
    const/4 v7, 0x0

    goto :goto_13

    :cond_22
    :goto_12
    const/4 v7, 0x1

    :goto_13
    or-int/2addr v8, v7

    iget-object v7, v1, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/grack/nanojson/JsonParser;->index:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v1, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_23
    move v0, v8

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private consumeTokenString()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->ensureBuffer(I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->stringChar()C

    move-result v0

    iget-boolean v3, p0, Lcom/grack/nanojson/JsonParser;->utf8:Z

    if-eqz v3, :cond_0

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->consumeTokenStringUtf8Char(C)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x22

    if-eq v0, v3, :cond_e

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v5

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v3, 0x62

    if-eq v0, v3, :cond_c

    const/16 v3, 0x66

    if-eq v0, v3, :cond_b

    const/16 v4, 0x6e

    const/16 v5, 0xa

    if-eq v0, v4, :cond_a

    const/16 v4, 0x72

    if-eq v0, v4, :cond_9

    const/16 v4, 0x74

    if-eq v0, v4, :cond_8

    const/16 v4, 0x75

    if-ne v0, v4, :cond_7

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v0, v6, :cond_6

    shl-int/lit8 v4, v4, 0x4

    iget-object v6, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v7, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v6, v6, v7

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    const/16 v7, 0x39

    if-gt v6, v7, :cond_3

    add-int/lit8 v6, v6, -0x30

    :goto_2
    or-int/2addr v4, v6

    goto :goto_4

    :cond_3
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x46

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x41

    :goto_3
    add-int/2addr v6, v5

    goto :goto_2

    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    if-gt v6, v3, :cond_5

    add-int/lit8 v6, v6, -0x61

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unicode hex escape character: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    int-to-char v3, v4

    goto :goto_5

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escape: \\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    iget v0, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-gt v0, v3, :cond_d

    goto/16 :goto_0

    :cond_d
    iput v3, p0, Lcom/grack/nanojson/JsonParser;->index:I

    const-string v0, "EOF encountered in the middle of a string escape"

    invoke-direct {p0, v2, v0, v1}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->fixupAfterRawBufferRead()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x1

    const-string v1, "String was not terminated before end of input"

    invoke-direct {p0, v2, v1, v0}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method private consumeTokenStringUtf8Char(C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonParser;->ensureBuffer(I)I

    and-int/lit16 v1, p1, 0xf0

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    const/16 v2, 0x90

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_d

    const/16 v2, 0xb0

    if-eq v1, v2, :cond_d

    const/16 v2, 0xc0

    const-string v5, "Illegal UTF-8 byte: 0x"

    const/4 v6, 0x1

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_a

    const/16 v2, 0xe0

    const/4 v7, 0x2

    if-eq v1, v2, :cond_5

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v1, p1, 0xf

    if-ge v1, v0, :cond_4

    and-int/lit8 v0, p1, 0xc

    shr-int/2addr v0, v7

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    and-int/2addr p1, v6

    shl-int/lit8 p1, p1, 0x1e

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to represent codepoint 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in a Java string"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_2
    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to represent codepoint 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in a Java string"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    iget-object v2, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v5, v2, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr p1, v5

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v5, v2, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr p1, v5

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v2, v2, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    add-int/2addr p1, v1

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_5
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v1, v0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    const v0, 0xd800

    if-lt p1, v0, :cond_6

    const v0, 0xdbff

    if-le p1, v0, :cond_7

    :cond_6
    const v0, 0xdc00

    if-lt p1, v0, :cond_8

    const v0, 0xdfff

    if-le p1, v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 codepoint: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_c

    :cond_a
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    add-int/2addr p1, v6

    :goto_1
    iput p1, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    :goto_2
    iget p1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-gt p1, v0, :cond_b

    return-void

    :cond_b
    const-string p1, "UTF-8 codepoint was truncated"

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 continuation byte: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method

.method private createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->peekChar()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/grack/nanojson/JsonParser;->isAsciiLetter(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v1, 0xf

    if-ge p3, v1, :cond_1

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceChar()I

    move-result p3

    int-to-char p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ". Did you mean \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    return-object p1
.end method

.method private createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;
    .locals 9

    const-string v0, ", char "

    const-string v1, " on line "

    if-eqz p3, :cond_0

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/grack/nanojson/JsonParser;->tokenLinePos:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/grack/nanojson/JsonParser;->tokenCharPos:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/grack/nanojson/JsonParser;->tokenLinePos:I

    iget v6, p0, Lcom/grack/nanojson/JsonParser;->tokenCharPos:I

    iget v7, p0, Lcom/grack/nanojson/JsonParser;->tokenCharOffset:I

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3

    :cond_0
    const/4 p3, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->rowPos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    iget p2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int v8, p2, v0

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3
.end method

.method private currentValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    iget-boolean v0, v0, Lcom/grack/nanojson/JsonParser$Token;->isValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method private ensureBuffer(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    sub-int v1, v0, p1

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    if-lt v1, v2, :cond_0

    return p1

    :cond_0
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/grack/nanojson/JsonParser;->index:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    array-length v3, v3

    iget v4, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    iget p1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_2
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected internal error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "IOException"

    invoke-direct {p0, p1, v1, v0}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method

.method private fixupAfterRawBufferRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->refillBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonParser;->eof:Z

    :cond_0
    return-void
.end method

.method private isAsciiLetter(I)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDigitCharacter(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/16 v0, 0x45

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static object()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/grack/nanojson/JsonParser$JsonParserContext<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonParser$JsonParserContext;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private peekChar()I
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonParser;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method private refillBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget-object v3, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    iput v4, p0, Lcom/grack/nanojson/JsonParser;->index:I

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->bufferLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    const-string v2, "IOException"

    invoke-direct {p0, v1, v2, v0}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method private stringChar()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->linePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/grack/nanojson/JsonParser;->charOffset:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/grack/nanojson/JsonParser;->rowPos:I

    iput v2, p0, Lcom/grack/nanojson/JsonParser;->utf8adjust:I

    :cond_0
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strings may not contain control characters: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_1
    return v0
.end method


# virtual methods
.method parse(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonParser;->advanceToken()Lcom/grack/nanojson/JsonParser$Token;

    move-result-object v1

    sget-object v2, Lcom/grack/nanojson/JsonParser$Token;->EOF:Lcom/grack/nanojson/JsonParser$Token;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON did not contain the correct type, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected end of input, got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->token:Lcom/grack/nanojson/JsonParser$Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonParser;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method
