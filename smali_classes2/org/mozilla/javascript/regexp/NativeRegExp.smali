.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeRegExp.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANCHOR_BOL:I = -0x2

.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_global:I = 0x3

.field private static final Id_ignoreCase:I = 0x4

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x5

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object;

.field private static final REOP_ALNUM:B = 0x9t

.field private static final REOP_ALT:B = 0x1ft

.field private static final REOP_ALTPREREQ:B = 0x35t

.field private static final REOP_ALTPREREQ2:B = 0x37t

.field private static final REOP_ALTPREREQi:B = 0x36t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0xdt

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x16t

.field private static final REOP_DIGIT:B = 0x7t

.field private static final REOP_DOT:B = 0x6t

.field private static final REOP_EMPTY:B = 0x1t

.field private static final REOP_END:B = 0x39t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0xet

.field private static final REOP_FLAT1:B = 0xft

.field private static final REOP_FLAT1i:B = 0x11t

.field private static final REOP_FLATi:B = 0x10t

.field private static final REOP_JUMP:B = 0x20t

.field private static final REOP_LPAREN:B = 0x1dt

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NCLASS:B = 0x17t

.field private static final REOP_NONALNUM:B = 0xat

.field private static final REOP_NONDIGIT:B = 0x8t

.field private static final REOP_NONSPACE:B = 0xct

.field private static final REOP_OPT:B = 0x1ct

.field private static final REOP_PLUS:B = 0x1bt

.field private static final REOP_QUANT:B = 0x19t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0x1et

.field private static final REOP_SIMPLE_END:B = 0x17t

.field private static final REOP_SIMPLE_START:B = 0x1t

.field private static final REOP_SPACE:B = 0xbt

.field private static final REOP_STAR:B = 0x1at

.field private static final REOP_UCFLAT1:B = 0x12t

.field private static final REOP_UCFLAT1i:B = 0x13t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:Ljava/lang/Object;

.field private lastIndexAttr:I

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 216
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 2778
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v0, 0x6

    .line 2779
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 2778
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 2779
    iput v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 141
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 142
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 143
    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .locals 5

    .line 1507
    div-int/lit8 v0, p1, 0x8

    .line 1508
    div-int/lit8 v1, p2, 0x8

    .line 1510
    iget v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p2, v2, :cond_2

    if-gt p1, p2, :cond_2

    and-int/lit8 p1, p1, 0x7

    int-to-char p1, p1

    and-int/lit8 p2, p2, 0x7

    int-to-char p2, p2

    const/16 v2, 0xff

    if-ne v0, v1, :cond_0

    .line 1519
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    sub-int/2addr p2, p1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_1

    .line 1522
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v0

    shl-int p1, v2, p1

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    .line 1524
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    const/4 v3, -0x1

    aput-byte v3, p1, v0

    goto :goto_0

    .line 1525
    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p1, p0, v1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    :goto_1
    return-void

    :cond_2
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    .line 1511
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .locals 3

    .line 1492
    div-int/lit8 v0, p1, 0x8

    .line 1493
    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p1, v1, :cond_0

    .line 1497
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void

    :cond_0
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    .line 1494
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static addIndex([BII)I
    .locals 1

    if-ltz p2, :cond_1

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 1213
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    .line 1214
    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    const-string p0, "Too complex regexp"

    .line 1212
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1210
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z
    .locals 5

    .line 1462
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1464
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 1468
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result p1

    .line 1469
    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int v4, v2, p1

    if-le v4, p3, :cond_2

    return v1

    .line 1472
    :cond_2
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_5

    add-int v2, v0, p3

    .line 1474
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1475
    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, p3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1476
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-eq v2, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1480
    :cond_4
    invoke-virtual {p2, v0, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_5

    return v1

    .line 1483
    :cond_5
    iget p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 563
    iput v3, v0, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v4, 0x1

    .line 564
    iput-boolean v4, v0, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-ne v1, v2, :cond_0

    return v4

    .line 569
    :cond_0
    aget-char v5, p2, v1

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 571
    iput-boolean v3, v0, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_0
    if-eq v1, v2, :cond_13

    .line 577
    aget-char v8, p2, v1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, "msg.bad.range"

    const/16 v13, 0x5c

    if-eq v8, v13, :cond_3

    add-int/lit8 v8, v1, 0x1

    .line 681
    aget-char v13, p2, v1

    :goto_1
    move v1, v8

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v1, 0x1

    .line 580
    aget-char v1, p2, v1

    const/16 v14, 0x44

    if-eq v1, v14, :cond_11

    const/16 v14, 0x53

    if-eq v1, v14, :cond_11

    const/16 v14, 0x57

    if-eq v1, v14, :cond_11

    const/16 v14, 0x66

    if-eq v1, v14, :cond_b

    const/16 v14, 0x6e

    if-eq v1, v14, :cond_a

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    :cond_4
    :goto_2
    move v13, v1

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_3

    :pswitch_1
    const/16 v13, 0xb

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    :goto_3
    move v14, v8

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v8, v1, :cond_6

    if-ge v14, v2, :cond_6

    add-int/lit8 v16, v14, 0x1

    .line 613
    aget-char v14, p2, v14

    .line 614
    invoke-static {v14, v15}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v15

    if-gez v15, :cond_5

    add-int/lit8 v8, v8, 0x1

    sub-int v14, v16, v8

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v16

    goto :goto_4

    :cond_6
    move v13, v15

    :goto_5
    move v1, v14

    goto :goto_6

    :pswitch_3
    const/16 v13, 0x9

    goto :goto_1

    :pswitch_4
    const/16 v13, 0xd

    goto :goto_1

    :pswitch_5
    if-nez v6, :cond_7

    const/16 v13, 0x39

    goto :goto_1

    .line 627
    :cond_7
    invoke-static {v12, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :pswitch_6
    if-ge v8, v2, :cond_8

    .line 601
    aget-char v1, p2, v8

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v8, 0x1

    .line 602
    aget-char v8, p2, v8

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v8, -0x1

    goto :goto_6

    :pswitch_7
    const/16 v13, 0x8

    goto :goto_1

    :pswitch_8
    add-int/lit8 v1, v1, -0x30

    .line 658
    aget-char v13, p2, v8

    const/16 v14, 0x30

    if-gt v14, v13, :cond_4

    const/16 v15, 0x37

    if-gt v13, v15, :cond_4

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v1, v13

    .line 662
    aget-char v13, p2, v8

    if-gt v14, v13, :cond_4

    if-gt v13, v15, :cond_4

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v14, v1, 0x8

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v14, v13

    const/16 v13, 0xff

    if-gt v14, v13, :cond_9

    move v13, v14

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_a
    const/16 v13, 0xa

    goto/16 :goto_1

    :cond_b
    const/16 v13, 0xc

    goto/16 :goto_1

    :goto_6
    if-eqz v6, :cond_d

    if-gt v7, v13, :cond_c

    const/4 v6, 0x0

    goto :goto_7

    .line 686
    :cond_c
    invoke-static {v12, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_d
    add-int/lit8 v8, v2, -0x1

    if-ge v1, v8, :cond_e

    .line 693
    aget-char v8, p2, v1

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_e

    add-int/lit8 v1, v1, 0x1

    int-to-char v7, v13

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    :goto_7
    move-object/from16 v8, p0

    .line 701
    iget v10, v8, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_10

    int-to-char v9, v13

    .line 702
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v10

    .line 703
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v9

    if-lt v10, v9, :cond_f

    move v13, v10

    goto :goto_8

    :cond_f
    move v13, v9

    :cond_10
    :goto_8
    if-le v13, v5, :cond_2

    move v5, v13

    goto/16 :goto_0

    :cond_11
    :pswitch_9
    if-nez v6, :cond_12

    const/high16 v1, 0x10000

    .line 641
    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v4

    .line 638
    :cond_12
    invoke-static {v12, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    :cond_13
    add-int/2addr v5, v4

    .line 709
    iput v5, v0, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .locals 2

    .line 1739
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    .line 1740
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    :cond_0
    shr-int/lit8 p0, p2, 0x3

    .line 1744
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ge p2, v0, :cond_2

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p0, v0, p0

    and-int/lit8 p2, p2, 0x7

    shl-int p2, v1, p2

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;
    .locals 11

    .line 283
    new-instance v0, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 287
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 288
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x67

    const-string v9, "msg.invalid.re.flag"

    if-ne v7, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/16 v8, 0x69

    if-ne v7, v8, :cond_1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    const/16 v8, 0x6d

    if-ne v7, v8, :cond_3

    const/4 v8, 0x4

    :goto_1
    and-int v10, v6, v8

    if-nez v10, :cond_2

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v6, 0x0

    .line 305
    :cond_5
    iput v6, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 307
    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, v5, p1, v6}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    if-eqz p3, :cond_6

    if-lez p1, :cond_6

    .line 312
    new-instance p0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 p3, 0xe

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 313
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    aget-char p3, p3, v4

    iput-char p3, p0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 314
    iput p1, p0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 315
    iput v4, p0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 316
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p0, p0, 0x5

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_2

    .line 318
    :cond_6
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p3

    if-nez p3, :cond_7

    return-object v2

    .line 323
    :cond_7
    iget p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    iget v5, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le p3, v5, :cond_8

    .line 324
    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, p3, p1, v6}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    .line 325
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    .line 326
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v2

    .line 331
    :cond_8
    :goto_2
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr p0, v3

    new-array p0, p0, [B

    iput-object p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 332
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    if-eqz p0, :cond_9

    .line 333
    new-array p1, p0, [Lorg/mozilla/javascript/regexp/RECharSet;

    iput-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 334
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    .line 336
    :cond_9
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p2, v0, v4, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p0

    .line 337
    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/16 p3, 0x39

    aput-byte p3, p1, p0

    .line 347
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 350
    aget-byte p0, p1, v4

    const/4 p3, -0x2

    if-eq p0, v1, :cond_b

    const/16 v2, 0x1f

    if-eq p0, v2, :cond_a

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 353
    :pswitch_0
    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_3

    .line 357
    :pswitch_1
    aget-byte p0, p1, v3

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_3

    .line 361
    :pswitch_2
    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    .line 362
    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char p0, p1, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_3

    .line 368
    :cond_a
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 369
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p1, p1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p1, v1, :cond_c

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p0, p0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p0, v1, :cond_c

    .line 370
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_3

    .line 365
    :cond_b
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    :cond_c
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .locals 2

    .line 769
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 770
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/4 p1, 0x1

    .line 771
    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    const/4 p1, -0x1

    .line 772
    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 773
    iget p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return-void
.end method

.method private static downcase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_0
    return p0

    .line 439
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ge v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    return p0
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .locals 8

    .line 1230
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    :goto_0
    if-eqz p3, :cond_1a

    add-int/lit8 v1, p2, 0x1

    .line 1233
    iget-byte v2, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    aput-byte v2, v0, p2

    const/4 p2, 0x1

    if-eq v2, p2, :cond_19

    const/16 v3, 0x16

    if-eq v2, v3, :cond_17

    const/16 v3, 0x19

    const/4 v4, -0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_e

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_d

    const/16 v3, 0xd

    if-eq v2, v3, :cond_c

    const/16 v3, 0xe

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move p2, v1

    goto/16 :goto_f

    :pswitch_0
    const/16 v3, 0x36

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_1

    .line 1242
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    goto :goto_3

    :cond_1
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    :goto_3
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_2

    .line 1244
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    int-to-char p2, p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p2

    goto :goto_4

    :cond_2
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    :goto_4
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_a

    :cond_3
    add-int/lit8 p2, v1, 0x2

    .line 1321
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2c

    .line 1322
    aput-byte v3, v0, p2

    .line 1323
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto :goto_5

    :cond_4
    add-int/lit8 p2, v1, 0x2

    .line 1314
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2b

    .line 1315
    aput-byte v3, v0, p2

    .line 1316
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    :goto_5
    move p2, v2

    goto/16 :goto_f

    .line 1269
    :cond_5
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v4, :cond_6

    .line 1271
    :goto_6
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v2, :cond_6

    iget-byte v5, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v5, v3, :cond_6

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v5, v6

    iget v7, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-ne v5, v7, :cond_6

    .line 1273
    iget v5, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v6, v5

    iput v6, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 1274
    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_6

    .line 1277
    :cond_6
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v4, :cond_8

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    if-le v2, p2, :cond_8

    .line 1278
    iget p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x10

    .line 1279
    aput-byte v2, v0, p2

    goto :goto_7

    :cond_7
    add-int/lit8 p2, v1, -0x1

    .line 1281
    aput-byte v3, v0, p2

    .line 1282
    :goto_7
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1283
    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_f

    .line 1286
    :cond_8
    iget-char p2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/16 v2, 0x100

    if-ge p2, v2, :cond_a

    .line 1287
    iget p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x11

    .line 1288
    aput-byte v2, v0, p2

    goto :goto_8

    :cond_9
    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0xf

    .line 1290
    aput-byte v2, v0, p2

    :goto_8
    add-int/lit8 p2, v1, 0x1

    .line 1291
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_f

    .line 1294
    :cond_a
    iget p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x13

    .line 1295
    aput-byte v2, v0, p2

    goto :goto_9

    :cond_b
    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x12

    .line 1297
    aput-byte v2, v0, p2

    .line 1298
    :goto_9
    iget-char p2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_f

    .line 1309
    :cond_c
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_f

    .line 1248
    :cond_d
    :goto_a
    iget-object p2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v2, v1, 0x2

    .line 1251
    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x20

    .line 1252
    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x2

    .line 1255
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 1256
    invoke-static {p0, p1, v2, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    .line 1258
    aput-byte v4, v0, p2

    add-int/lit8 p2, v1, 0x2

    .line 1262
    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 1263
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_f

    .line 1303
    :cond_e
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1304
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x1e

    .line 1305
    aput-byte v2, v0, p2

    .line 1306
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_f

    .line 1326
    :cond_f
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v2, :cond_11

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v2, v4, :cond_11

    add-int/lit8 p2, v1, -0x1

    .line 1327
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x1a

    goto :goto_b

    :cond_10
    const/16 v2, 0x2d

    :goto_b
    aput-byte v2, v0, p2

    goto :goto_e

    .line 1329
    :cond_11
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v2, :cond_13

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v2, p2, :cond_13

    add-int/lit8 p2, v1, -0x1

    .line 1330
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_12

    const/16 v2, 0x1c

    goto :goto_c

    :cond_12
    const/16 v2, 0x2f

    :goto_c
    aput-byte v2, v0, p2

    goto :goto_e

    .line 1332
    :cond_13
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-ne v2, p2, :cond_15

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v2, v4, :cond_15

    add-int/lit8 p2, v1, -0x1

    .line 1333
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x1b

    goto :goto_d

    :cond_14
    const/16 v2, 0x2e

    :goto_d
    aput-byte v2, v0, p2

    goto :goto_e

    .line 1335
    :cond_15
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-nez v2, :cond_16

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    .line 1336
    :cond_16
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    .line 1338
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    .line 1340
    :goto_e
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1341
    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    add-int/lit8 v1, p2, 0x2

    .line 1344
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x31

    .line 1345
    aput-byte v3, v0, v1

    .line 1346
    invoke-static {v0, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_5

    .line 1349
    :cond_17
    iget-boolean p2, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-nez p2, :cond_18

    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x17

    .line 1350
    aput-byte v2, v0, p2

    .line 1351
    :cond_18
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1352
    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    new-instance v3, Lorg/mozilla/javascript/regexp/RECharSet;

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget-boolean v7, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(IIIZ)V

    aput-object v3, v1, v2

    goto :goto_f

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 1358
    :goto_f
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_0

    :cond_1a
    return p2

    :catch_0
    move-exception p0

    .line 1344
    throw p0

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 224
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-le v1, v4, :cond_3

    if-eq v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    .line 230
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_2

    :cond_0
    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    :cond_1
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v3, "\\/"

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 238
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 11

    .line 250
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v3

    .line 252
    array-length v0, p3

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 253
    iget-object p3, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 255
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 258
    :cond_0
    aget-object p3, p3, v7

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_0
    move-object v4, p3

    .line 261
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    const/4 v8, 0x1

    and-int/2addr p3, v8

    const-wide/16 v9, 0x0

    if-eqz p3, :cond_2

    .line 262
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    move-wide v0, v9

    :goto_1
    cmpg-double p3, v0, v9

    if-ltz p3, :cond_6

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    int-to-double v5, p3

    cmpg-double p3, v5, v0

    if-gez p3, :cond_3

    goto :goto_3

    .line 271
    :cond_3
    new-array p3, v8, [I

    double-to-int v0, v0

    aput v0, p3, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    .line 272
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object p1

    .line 273
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p2, v8

    if-eqz p2, :cond_7

    if-eqz p1, :cond_5

    .line 274
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    aget p2, p3, v7

    int-to-double v9, p2

    :cond_5
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    goto :goto_4

    .line 267
    :cond_6
    :goto_3
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 p1, 0x0

    :cond_7
    :goto_4
    return-object p1
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1942
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 v10, 0x0

    .line 1947
    aget-byte v11, v9, v10

    .line 1953
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    const/16 v12, 0x39

    const/16 v14, 0x34

    const/4 v15, 0x1

    const/16 v16, 0x1

    if-gez v0, :cond_3

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1955
    :goto_0
    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-gt v0, v8, :cond_1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, p2

    .line 1956
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v16, v0, 0x1

    .line 1960
    aget-byte v11, v9, v0

    const/4 v0, 0x1

    goto :goto_1

    .line 1963
    :cond_0
    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, v15

    iput v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 1964
    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, v15

    iput v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v10

    :cond_2
    move v2, v11

    move/from16 v11, v16

    goto :goto_2

    :cond_3
    move v2, v11

    const/4 v11, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v17, 0x39

    const/16 v18, 0x0

    .line 1972
    :goto_3
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move v4, v11

    move/from16 v5, p2

    .line 1973
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    move v11, v0

    :cond_5
    move/from16 v18, v1

    goto/16 :goto_11

    :cond_6
    if-eq v2, v12, :cond_29

    const/4 v0, 0x0

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_0

    const/16 v5, 0x2c

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const-string v1, "invalid bytecode"

    .line 2329
    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    throw v0

    .line 1984
    :pswitch_0
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    int-to-char v0, v0

    add-int/lit8 v11, v11, 0x2

    .line 1986
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    int-to-char v1, v1

    add-int/lit8 v11, v11, 0x2

    .line 1989
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ne v3, v8, :cond_7

    :goto_5
    const/16 v18, 0x0

    goto/16 :goto_11

    :cond_7
    move-object/from16 v5, p1

    .line 1993
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-ne v2, v4, :cond_8

    if-eq v3, v0, :cond_24

    .line 1995
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v0, v0, v1

    invoke-static {v7, v0, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_5

    :cond_8
    const/16 v4, 0x36

    if-ne v2, v4, :cond_9

    .line 2002
    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    :cond_9
    if-eq v3, v0, :cond_24

    if-eq v3, v1, :cond_24

    goto :goto_5

    :pswitch_1
    move-object/from16 v5, p1

    .line 2263
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v4

    if-nez v18, :cond_d

    .line 2268
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eq v0, v6, :cond_b

    if-lez v0, :cond_a

    goto :goto_6

    .line 2284
    :cond_a
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2285
    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    goto/16 :goto_b

    .line 2269
    :cond_b
    :goto_6
    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v2, v4, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/16 v16, 0x0

    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v4, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v19, v4

    move-object/from16 v4, v16

    move/from16 v5, v17

    const/4 v12, -0x1

    move/from16 v6, v19

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2273
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    .line 2275
    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_c

    add-int v4, v2, v3

    .line 2278
    invoke-virtual {v7, v4, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v1, 0x1

    .line 2280
    aget-byte v2, v9, v1

    :goto_8
    move/from16 v16, v11

    const/16 v12, 0x39

    const/16 v17, 0x34

    :goto_9
    move v11, v0

    goto/16 :goto_3

    :cond_d
    const/4 v12, -0x1

    .line 2289
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_e

    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v0, v1, :cond_e

    .line 2292
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2293
    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    goto/16 :goto_c

    .line 2296
    :cond_e
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v0, :cond_f

    add-int/lit8 v0, v0, -0x1

    :cond_f
    move/from16 v16, v0

    if-eq v1, v12, :cond_10

    add-int/lit8 v1, v1, -0x1

    :cond_10
    move v2, v1

    .line 2299
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v5, 0x0

    iget v6, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move/from16 v1, v16

    move-object v13, v4

    move-object v4, v5

    move v5, v6

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v16, :cond_12

    .line 2304
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    .line 2306
    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_11

    add-int v4, v2, v3

    .line 2309
    invoke-virtual {v7, v4, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    add-int/lit8 v0, v1, 0x1

    .line 2311
    aget-byte v2, v9, v1

    goto :goto_8

    .line 2313
    :cond_12
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2314
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 2315
    invoke-static {v7, v14, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2316
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v11, v11, 0x4

    .line 2318
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v11, 0x1

    .line 2319
    aget-byte v3, v9, v11

    move/from16 v16, v0

    move/from16 v17, v1

    move v11, v2

    move v2, v3

    const/16 v12, 0x39

    goto/16 :goto_3

    :pswitch_2
    const/4 v12, -0x1

    .line 2193
    :cond_13
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v13

    if-nez v18, :cond_15

    .line 2196
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_14

    const/16 v18, 0x1

    .line 2198
    :cond_14
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2199
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    .line 2201
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    :goto_b
    move/from16 v16, v0

    move/from16 v17, v1

    goto/16 :goto_11

    .line 2204
    :cond_15
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_16

    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v0, v1, :cond_16

    .line 2207
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2208
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    .line 2210
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    :goto_c
    move/from16 v16, v0

    move/from16 v17, v1

    goto/16 :goto_5

    .line 2213
    :cond_16
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v0, :cond_17

    add-int/lit8 v0, v0, -0x1

    :cond_17
    move/from16 v16, v0

    if-eq v1, v12, :cond_18

    add-int/lit8 v1, v1, -0x1

    :cond_18
    move/from16 v17, v1

    if-nez v17, :cond_19

    .line 2218
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2219
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    .line 2221
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    move/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x1

    goto/16 :goto_11

    :cond_19
    add-int/lit8 v0, v11, 0x6

    .line 2225
    aget-byte v2, v9, v0

    .line 2226
    iget v6, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2227
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v4, v0, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move/from16 v5, p2

    move/from16 v20, v6

    move/from16 v6, v18

    .line 2229
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_1b

    if-nez v16, :cond_1a

    const/4 v0, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    .line 2232
    :goto_d
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2233
    iget v2, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    .line 2235
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int/2addr v11, v3

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_11

    :cond_1b
    move/from16 v21, v0

    const/16 v18, 0x1

    goto :goto_e

    :cond_1c
    move/from16 v20, v6

    move/from16 v21, v0

    :goto_e
    const/4 v4, 0x0

    .line 2243
    iget v5, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v6, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-nez v16, :cond_1d

    const/16 v1, 0x33

    .line 2246
    iget v4, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v5, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move v2, v11

    move/from16 v3, v20

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    .line 2248
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    .line 2249
    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1d

    add-int v3, v1, v2

    .line 2251
    invoke-virtual {v7, v3, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2254
    :cond_1d
    aget-byte v0, v9, v21

    const/16 v1, 0x31

    if-eq v0, v1, :cond_13

    add-int/lit8 v0, v21, 0x1

    .line 2257
    aget-byte v2, v9, v21

    move/from16 v16, v11

    const/16 v12, 0x39

    const/16 v17, 0x33

    goto/16 :goto_9

    :pswitch_3
    move/from16 v11, v16

    move/from16 v2, v17

    const/16 v18, 0x1

    goto/16 :goto_3

    :pswitch_4
    const/4 v12, -0x1

    goto/16 :goto_16

    .line 2096
    :pswitch_5
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v0

    .line 2097
    iget v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    iput v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2098
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2099
    iget v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 2100
    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    if-ne v2, v5, :cond_1e

    xor-int/lit8 v18, v18, 0x1

    :cond_1e
    move/from16 v17, v0

    move/from16 v16, v1

    goto/16 :goto_11

    .line 2077
    :pswitch_6
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v13, v11, 0x1

    .line 2079
    aget-byte v11, v9, v11

    .line 2080
    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move v4, v13

    const/16 v14, 0x2c

    move/from16 v5, p2

    .line 2081
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_20

    .line 2082
    aget-byte v0, v9, v0

    if-ne v0, v14, :cond_20

    goto :goto_10

    :cond_1f
    const/16 v14, 0x2c

    :cond_20
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2087
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2089
    invoke-static {v7, v14, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    goto/16 :goto_12

    .line 2063
    :pswitch_7
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v13, v11, 0x1

    .line 2065
    aget-byte v11, v9, v11

    .line 2066
    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move v4, v13

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_23

    :goto_10
    move v11, v13

    goto/16 :goto_5

    :goto_11
    if-nez v18, :cond_22

    .line 2338
    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    if-eqz v0, :cond_21

    .line 2340
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2341
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 2342
    iget v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    iput v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2343
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2344
    iget v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    .line 2345
    iget v2, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    .line 2346
    iget v11, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    .line 2347
    iget v0, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    move/from16 v17, v1

    move/from16 v16, v2

    const/16 v12, 0x39

    const/16 v14, 0x34

    move v2, v0

    goto/16 :goto_3

    :cond_21
    return v10

    :cond_22
    add-int/lit8 v0, v11, 0x1

    .line 2354
    aget-byte v2, v9, v11

    goto/16 :goto_14

    :cond_23
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2070
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v0, 0x2b

    .line 2072
    invoke-static {v7, v0, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    :goto_12
    move v2, v11

    move v11, v13

    goto/16 :goto_15

    .line 2035
    :pswitch_8
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v0

    add-int/2addr v11, v0

    add-int/lit8 v0, v11, 0x1

    .line 2037
    aget-byte v2, v9, v11

    goto/16 :goto_14

    .line 2012
    :cond_24
    :pswitch_9
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v4, v11, 0x1

    .line 2014
    aget-byte v2, v9, v11

    .line 2015
    iget v11, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2016
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move/from16 v5, p2

    .line 2017
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_25

    add-int/lit8 v11, v12, 0x1

    .line 2019
    aget-byte v2, v9, v12

    goto :goto_15

    :cond_25
    add-int/lit8 v1, v0, 0x1

    .line 2025
    aget-byte v0, v9, v0

    move v13, v0

    move v6, v1

    const/16 v18, 0x1

    goto :goto_13

    :cond_26
    move v13, v2

    move v6, v4

    :goto_13
    add-int/lit8 v2, v12, 0x1

    .line 2027
    aget-byte v1, v9, v12

    move-object/from16 v0, p0

    move v3, v11

    move/from16 v4, v17

    move/from16 v5, v16

    .line 2028
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    move v11, v6

    move v2, v13

    goto :goto_15

    .line 2052
    :pswitch_a
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v11, v11, 0x2

    .line 2054
    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v1

    .line 2055
    iget v2, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v2, v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v0, v11, 0x1

    .line 2057
    aget-byte v2, v9, v11

    goto :goto_14

    .line 2044
    :pswitch_b
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v11, v11, 0x2

    .line 2046
    iget v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {v7, v0, v1, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v0, v11, 0x1

    .line 2047
    aget-byte v2, v9, v11

    :goto_14
    move v11, v0

    :goto_15
    const/16 v12, 0x39

    const/16 v14, 0x34

    goto/16 :goto_3

    :goto_16
    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    .line 2151
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v0

    :pswitch_c
    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_d
    const/4 v0, 0x0

    goto :goto_17

    :pswitch_e
    const/4 v0, 0x0

    goto :goto_18

    :pswitch_f
    const/4 v0, 0x0

    goto :goto_19

    :pswitch_10
    const/4 v0, 0x1

    :goto_17
    move v12, v0

    move v13, v11

    const/4 v2, 0x1

    goto :goto_1a

    :pswitch_11
    const/4 v0, 0x1

    :goto_18
    move v12, v0

    move v13, v11

    const/4 v2, -0x1

    const/4 v11, 0x1

    goto :goto_1c

    :pswitch_12
    const/4 v0, 0x1

    :goto_19
    move v12, v0

    move v13, v11

    const/4 v2, -0x1

    :goto_1a
    const/4 v11, 0x0

    goto :goto_1c

    :pswitch_13
    const/4 v0, 0x1

    .line 2144
    :goto_1b
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int/lit8 v11, v11, 0x2

    .line 2147
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    sub-int/2addr v2, v15

    add-int/lit8 v11, v11, 0x2

    move v12, v0

    move v13, v11

    move v11, v1

    .line 2153
    :goto_1c
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v12, :cond_27

    const/16 v0, 0x33

    .line 2156
    invoke-static {v7, v0, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    add-int/lit8 v1, v13, 0x6

    add-int/lit8 v2, v1, 0x1

    .line 2161
    aget-byte v1, v9, v1

    move v11, v2

    move/from16 v16, v13

    const/16 v17, 0x33

    :goto_1d
    move v2, v1

    const/16 v1, 0x34

    goto :goto_15

    :cond_27
    const/16 v0, 0x33

    if-eqz v11, :cond_28

    add-int/lit8 v1, v13, 0x6

    add-int/lit8 v2, v1, 0x1

    .line 2168
    aget-byte v1, v9, v1

    move v11, v2

    move/from16 v16, v13

    const/16 v17, 0x34

    goto :goto_1d

    :cond_28
    const/16 v1, 0x34

    .line 2170
    invoke-static {v7, v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2171
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v13, v13, 0x4

    .line 2173
    invoke-static {v9, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v13, v2

    add-int/lit8 v2, v13, 0x1

    .line 2174
    aget-byte v3, v9, v13

    move v11, v2

    move v2, v3

    goto/16 :goto_15

    :cond_29
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 4

    .line 1419
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    .line 1421
    :cond_0
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p4, p4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int v2, p1, v0

    .line 1423
    aget-char v2, p4, v2

    .line 1424
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1425
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1429
    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 3

    .line 1404
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_2

    .line 1407
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v2, p1, p4

    aget-char v0, v0, v2

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1411
    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I
    .locals 5

    .line 781
    iget v0, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 782
    iget-object v1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    add-int/lit8 p0, p0, -0x30

    const/4 v2, 0x0

    .line 784
    :goto_0
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_3

    .line 785
    aget-char v3, v1, v3

    .line 786
    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr p0, v3

    if-ge p0, p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, p2

    const/4 v2, 0x1

    .line 784
    :cond_2
    :goto_1
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v3, v4

    iput v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return p0

    .line 800
    :cond_4
    iget p0, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 0

    .line 220
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object p0
.end method

.method private static getIndex([BI)I
    .locals 1

    .line 1220
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getOffset([BI)I
    .locals 0

    .line 1205
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    return p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    .line 116
    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-static {p0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    iput-object p0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const/4 p0, 0x6

    .line 118
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 119
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 120
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 122
    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    const/4 v1, 0x2

    const-string v2, "constructor"

    .line 125
    invoke-virtual {v0, v2, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 127
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 133
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const-string p2, "RegExp"

    .line 136
    invoke-static {p1, p2, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static isControlLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLineTerm(C)Z
    .locals 0

    .line 400
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isREWhiteSpace(I)Z
    .locals 0

    .line 405
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isWord(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    .line 390
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z
    .locals 7

    .line 2363
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2364
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    goto :goto_0

    .line 2366
    :cond_0
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 2369
    :goto_0
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2370
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_2

    .line 2372
    iget p5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p5, 0x1

    :goto_2
    iput-boolean p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 2373
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 2375
    iget-object p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p5, p5, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    move v3, p3

    :goto_3
    if-gt v3, p4, :cond_9

    if-ltz p5, :cond_5

    :goto_4
    if-ne v3, p4, :cond_3

    return v0

    .line 2391
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p5, :cond_5

    .line 2392
    iget-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    int-to-char v5, p5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2401
    :cond_5
    :goto_5
    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v3, p3

    .line 2402
    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    const/4 v3, 0x0

    .line 2403
    :goto_6
    iget v4, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v3, v4, :cond_6

    .line 2404
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2406
    :cond_6
    invoke-static {p0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z

    move-result v3

    .line 2408
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2409
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    if-eqz v3, :cond_7

    return v2

    :cond_7
    const/4 v3, -0x2

    if-ne p5, v3, :cond_8

    .line 2413
    iget-boolean v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-nez v3, :cond_8

    .line 2414
    iput p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    return v0

    .line 2417
    :cond_8
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v3, p3

    add-int/2addr v3, v2

    goto :goto_3

    :cond_9
    return v0
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 6

    .line 526
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    const/4 v1, 0x0

    move-object v2, v1

    .line 528
    :cond_0
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_4

    aget-char v4, v0, v3

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_4

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v4, :cond_1

    aget-char v3, v0, v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 538
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-nez v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move-object v2, v1

    goto :goto_0

    .line 545
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 546
    :goto_0
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v3, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    if-nez v1, :cond_5

    .line 532
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_2

    .line 535
    :cond_5
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    :goto_2
    return v0
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 9

    .line 469
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 472
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 473
    array-length v3, v0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    aget-char v0, v0, v2

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_6

    add-int/2addr v2, v4

    .line 475
    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 476
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x1f

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 477
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 478
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 480
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 481
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 486
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v1, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v1, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v1, v2, :cond_3

    .line 487
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x35

    goto :goto_0

    :cond_2
    const/16 v1, 0x36

    :goto_0
    iput-byte v1, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 489
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 490
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 493
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    .line 494
    :cond_3
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v3, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v5, 0x37

    const/16 v6, 0x100

    const/16 v7, 0x16

    if-ne v3, v7, :cond_4

    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v1, v6, :cond_4

    iget-object v3, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v8, v3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v8, v2, :cond_4

    iget v8, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    .line 496
    iput-byte v5, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 497
    iget-char v2, v3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 498
    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 501
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    .line 502
    :cond_4
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v3, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v3, v2, :cond_5

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v3, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v3, v7, :cond_5

    iget v2, v2, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v2, v6, :cond_5

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 504
    iput-byte v5, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 505
    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 506
    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 509
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    .line 512
    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_6
    :goto_1
    return v4
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 809
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 810
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    .line 812
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    const/16 v4, 0x24

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x2e

    const/16 v7, 0xc

    const v8, 0xffff

    const/16 v9, 0x3f

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eq v2, v4, :cond_1d

    if-eq v2, v9, :cond_1c

    const/16 v4, 0x5e

    const/4 v13, 0x2

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x5b

    const/16 v14, 0x5c

    const-string v15, ""

    if-eq v2, v4, :cond_16

    const/4 v4, 0x4

    if-eq v2, v14, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 1093
    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v13, 0xe

    invoke-direct {v4, v13}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1094
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v2, v4, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 1095
    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 1096
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v6

    iput v2, v4, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 1097
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    :pswitch_0
    const-string v0, "msg.re.unmatched.right.paren"

    .line 1052
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 1016
    :pswitch_1
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v2, 0x1

    .line 1017
    iget v14, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v5, v14, :cond_3

    aget-char v5, v1, v2

    if-ne v5, v9, :cond_3

    add-int/2addr v2, v6

    aget-char v2, v1, v2

    const/16 v5, 0x3d

    if-eq v2, v5, :cond_0

    const/16 v5, 0x21

    if-eq v2, v5, :cond_0

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_3

    .line 1020
    :cond_0
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v5, v13

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_1

    .line 1022
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0x29

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 1024
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_0

    :cond_1
    const/16 v5, 0x21

    if-ne v2, v5, :cond_2

    .line 1026
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0x2a

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 1028
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_0

    :cond_2
    move-object v2, v11

    goto :goto_0

    .line 1031
    :cond_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0x1d

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 1033
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v4, v4, 0x6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1034
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v4, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 1036
    :goto_0
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 1037
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v4

    if-nez v4, :cond_4

    return v12

    .line 1039
    :cond_4
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v4, v5, :cond_5

    aget-char v5, v1, v4

    const/16 v13, 0x29

    if-ne v5, v13, :cond_5

    add-int/2addr v4, v6

    .line 1043
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1044
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v2, :cond_1e

    .line 1046
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v4, v2, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 1047
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_9

    :cond_5
    const-string v0, "msg.unterm.paren"

    .line 1040
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 828
    :cond_6
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v9, :cond_15

    add-int/lit8 v12, v2, 0x1

    .line 829
    iput v12, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    const/16 v12, 0x42

    if-eq v2, v12, :cond_14

    const/16 v12, 0x44

    if-eq v2, v12, :cond_13

    const/16 v12, 0x53

    if-eq v2, v12, :cond_12

    const/16 v12, 0x57

    if-eq v2, v12, :cond_11

    const/16 v12, 0x66

    if-eq v2, v12, :cond_10

    const/16 v12, 0x6e

    if-eq v2, v12, :cond_f

    const/16 v12, 0x30

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 1000
    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v9, 0xe

    invoke-direct {v4, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1001
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v2, v4, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 1002
    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 1003
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v6

    iput v2, v4, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 1004
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    :pswitch_2
    const/4 v4, 0x2

    goto :goto_1

    .line 991
    :pswitch_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0x9

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 992
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    :pswitch_4
    const/16 v2, 0xb

    .line 934
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    :goto_1
    :pswitch_5
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v2, v4, :cond_8

    .line 958
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v12, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v9, v12, :cond_8

    add-int/lit8 v12, v9, 0x1

    .line 959
    iput v12, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v9, v1, v9

    .line 960
    invoke-static {v9, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v5

    if-gez v5, :cond_7

    .line 964
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v2, v13

    sub-int/2addr v4, v2

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 965
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v5, v1, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    int-to-char v2, v5

    .line 971
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    :pswitch_6
    const/16 v2, 0x9

    .line 930
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 983
    :pswitch_7
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 984
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    :pswitch_8
    const/16 v2, 0xd

    .line 926
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 975
    :pswitch_9
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 976
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    .line 938
    :pswitch_a
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    if-ge v2, v9, :cond_9

    aget-char v2, v1, v2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 940
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    and-int/lit8 v2, v2, 0x1f

    int-to-char v14, v2

    goto :goto_4

    .line 943
    :cond_9
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 946
    :goto_4
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 833
    :pswitch_b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 834
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v6

    .line 874
    :pswitch_c
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v4, v6

    const-string v9, "msg.overlarge.backref"

    .line 875
    invoke-static {v2, v0, v8, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v9

    .line 877
    iget v13, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v9, v13, :cond_a

    .line 878
    iget-object v13, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v8, "msg.bad.backref"

    invoke-static {v13, v8, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_a
    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v9, v8, :cond_d

    .line 884
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v4, 0x38

    if-lt v2, v4, :cond_b

    .line 889
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 892
    :cond_b
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v12

    :goto_5
    const/16 v4, 0x20

    if-ge v2, v4, :cond_c

    .line 894
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v5, :cond_c

    .line 895
    aget-char v5, v1, v4

    if-lt v5, v12, :cond_c

    const/16 v8, 0x37

    if-gt v5, v8, :cond_c

    add-int/lit8 v4, v4, 0x1

    .line 897
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    goto :goto_5

    :cond_c
    int-to-char v2, v2

    .line 904
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 908
    :cond_d
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0xd

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 909
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v4, v9, -0x1

    iput v4, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 910
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 911
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    if-ge v2, v9, :cond_1e

    .line 912
    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    goto/16 :goto_9

    .line 848
    :pswitch_d
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v4, "msg.bad.backref"

    invoke-static {v2, v4, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_6
    const/16 v4, 0x20

    if-ge v2, v4, :cond_e

    .line 853
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v5, :cond_e

    .line 854
    aget-char v5, v1, v4

    if-lt v5, v12, :cond_e

    const/16 v8, 0x37

    if-gt v5, v8, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 856
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    goto :goto_6

    :cond_e
    int-to-char v2, v2

    .line 863
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    :cond_f
    const/16 v2, 0xa

    .line 922
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 918
    :cond_10
    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_9

    .line 995
    :cond_11
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 996
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    .line 987
    :cond_12
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 988
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    .line 979
    :cond_13
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 980
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_9

    .line 837
    :cond_14
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 838
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v6

    :cond_15
    const-string v0, "msg.trail.backslash"

    .line 1011
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 1055
    :cond_16
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v4, 0x16

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1056
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1057
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v2, v4, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    .line 1059
    :goto_7
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v4, v8, :cond_1a

    .line 1063
    aget-char v8, v1, v4

    if-ne v8, v14, :cond_17

    add-int/lit8 v4, v4, 0x1

    .line 1064
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_8

    .line 1066
    :cond_17
    aget-char v8, v1, v4

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_19

    .line 1067
    iget-object v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    sub-int v9, v4, v2

    iput v9, v8, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    .line 1073
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v9, v8, Lorg/mozilla/javascript/regexp/RENode;->index:I

    add-int/lit8 v9, v4, 0x1

    .line 1078
    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    invoke-static {v0, v8, v1, v2, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    return v2

    .line 1080
    :cond_18
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_9

    .line 1071
    :cond_19
    :goto_8
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_7

    :cond_1a
    const-string v0, "msg.unterm.class"

    .line 1060
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 820
    :cond_1b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v13}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 821
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v6

    .line 1090
    :cond_1c
    :pswitch_e
    iget v0, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v0, v6

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.bad.quant"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 1084
    :cond_1d
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1085
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1101
    :cond_1e
    :goto_9
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1102
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v4, v5, :cond_1f

    return v6

    .line 1106
    :cond_1f
    aget-char v5, v1, v4

    const/16 v8, 0x2a

    const/4 v9, -0x1

    const/16 v12, 0x19

    if-eq v5, v8, :cond_27

    const/16 v8, 0x2b

    if-eq v5, v8, :cond_26

    const/16 v8, 0x3f

    if-eq v5, v8, :cond_25

    const/16 v8, 0x7b

    if-eq v5, v8, :cond_20

    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v5, v4, 0x1

    .line 1143
    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v8, v1

    if-ge v5, v8, :cond_24

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v5, v1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1144
    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v8, v6

    iput v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const-string v8, "msg.overlarge.min"

    const v10, 0xffff

    .line 1145
    invoke-static {v5, v0, v10, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v5

    .line 1147
    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v10, v1, v8

    const/16 v13, 0x2c

    if-ne v10, v13, :cond_22

    add-int/2addr v8, v6

    .line 1149
    iput v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v10, v1, v8

    .line 1150
    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1151
    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v8, v6

    iput v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const-string v8, "msg.overlarge.max"

    const v9, 0xffff

    .line 1152
    invoke-static {v10, v0, v9, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v9

    .line 1154
    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v10, v1, v8

    if-gt v5, v9, :cond_21

    goto :goto_a

    .line 1156
    :cond_21
    aget-char v0, v1, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.max.lt.min"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    :cond_22
    move v9, v5

    :cond_23
    :goto_a
    const/16 v8, 0x7d

    if-ne v10, v8, :cond_24

    .line 1166
    new-instance v8, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v8, v12}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1167
    iget-object v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v5, v8, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1168
    iput v9, v8, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1171
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v5, v7

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/4 v5, 0x1

    goto :goto_b

    :cond_24
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_28

    .line 1176
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_d

    .line 1124
    :cond_25
    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v4, v12}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1125
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v5, 0x0

    iput v5, v4, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1126
    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1128
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v4, v10

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_c

    .line 1108
    :cond_26
    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v4, v12}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1109
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1110
    iput v9, v4, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1112
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v4, v10

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_c

    .line 1116
    :cond_27
    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v4, v12}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1117
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v5, 0x0

    iput v5, v4, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1118
    iput v9, v4, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1120
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v4, v10

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :goto_c
    const/4 v5, 0x1

    :cond_28
    :goto_d
    if-nez v5, :cond_29

    return v6

    .line 1184
    :cond_29
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1185
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v4, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 1186
    iput v3, v4, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 1187
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sub-int/2addr v2, v3

    iput v2, v4, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    .line 1188
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v3, :cond_2a

    aget-char v1, v1, v2

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_2a

    add-int/2addr v2, v6

    .line 1189
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v0, 0x0

    .line 1190
    iput-boolean v0, v4, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    goto :goto_e

    .line 1193
    :cond_2a
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-boolean v6, v0, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    :goto_e
    return v6

    .line 824
    :cond_2b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 825
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .locals 2

    .line 1376
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 1377
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 1

    .line 1533
    monitor-enter p1

    .line 1534
    :try_start_0
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    .line 1535
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    const/4 p0, 0x1

    .line 1536
    iput-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    .line 1538
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1545
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    .line 1546
    iget v3, v1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    add-int/2addr v3, v2

    .line 1556
    iget v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v4, v4, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    .line 1557
    new-array v4, v4, [B

    iput-object v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    if-ne v2, v3, :cond_0

    return-void

    .line 1562
    :cond_0
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v4, v4, v2

    const/16 v6, 0x5e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-eq v2, v3, :cond_19

    .line 1571
    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v10, v9, v2

    const/16 v11, 0x5c

    const/4 v12, 0x2

    if-eq v10, v11, :cond_2

    add-int/lit8 v10, v2, 0x1

    .line 1690
    aget-char v2, v9, v2

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 1574
    aget-char v2, v9, v2

    const/16 v13, 0x44

    if-eq v2, v13, :cond_17

    const/16 v13, 0x53

    if-eq v2, v13, :cond_15

    const/16 v13, 0x57

    if-eq v2, v13, :cond_13

    const/16 v13, 0x66

    if-eq v2, v13, :cond_b

    const/16 v13, 0x6e

    if-eq v2, v13, :cond_a

    const/16 v13, 0x30

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_8

    :pswitch_0
    const/4 v2, 0x2

    goto :goto_3

    .line 1673
    :pswitch_1
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_2
    if-ltz v2, :cond_18

    int-to-char v9, v2

    .line 1674
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1675
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :pswitch_2
    const/16 v2, 0xb

    goto/16 :goto_8

    :pswitch_3
    const/4 v2, 0x4

    :goto_3
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v9, v2, :cond_5

    if-ge v10, v3, :cond_5

    .line 1608
    iget-object v14, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v14, v14, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v15, v10, 0x1

    aget-char v10, v14, v10

    .line 1609
    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    move-result v10

    if-gez v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v15, v9

    goto :goto_5

    :cond_4
    shl-int/lit8 v13, v13, 0x4

    or-int/2addr v13, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v15

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_5
    int-to-char v2, v11

    goto/16 :goto_8

    :pswitch_4
    const/16 v2, 0x9

    goto/16 :goto_8

    .line 1663
    :pswitch_5
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_6
    if-ltz v2, :cond_18

    .line 1664
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_6

    int-to-char v9, v2

    .line 1665
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :pswitch_6
    const/16 v2, 0xd

    goto :goto_8

    :pswitch_7
    const/16 v2, 0x39

    .line 1655
    invoke-static {v1, v13, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    goto/16 :goto_d

    :pswitch_8
    if-ge v10, v3, :cond_7

    .line 1595
    aget-char v2, v9, v10

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1596
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v9, v10, 0x1

    aget-char v2, v2, v10

    and-int/lit8 v2, v2, 0x1f

    int-to-char v2, v2

    move v10, v9

    goto :goto_8

    :cond_7
    add-int/lit8 v10, v10, -0x1

    const/16 v2, 0x5c

    goto :goto_8

    :pswitch_9
    const/16 v2, 0x8

    goto :goto_8

    :pswitch_a
    add-int/lit8 v2, v2, -0x30

    .line 1637
    aget-char v11, v9, v10

    if-gt v13, v11, :cond_9

    const/16 v14, 0x37

    if-gt v11, v14, :cond_9

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v2, v11

    .line 1641
    aget-char v9, v9, v10

    if-gt v13, v9, :cond_9

    if-gt v9, v14, :cond_9

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v11, v2, 0x8

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v9, v11

    const/16 v11, 0xff

    if-gt v9, v11, :cond_8

    move v2, v9

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v10, -0x1

    :cond_9
    :goto_7
    int-to-char v2, v2

    goto :goto_8

    :cond_a
    const/16 v2, 0xa

    goto :goto_8

    :cond_b
    const/16 v2, 0xc

    :goto_8
    if-eqz v6, :cond_11

    .line 1695
    iget-object v6, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v6, v6, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v6, v12

    if-eqz v6, :cond_f

    move v6, v4

    :cond_c
    if-gt v6, v2, :cond_10

    .line 1698
    invoke-static {v1, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1699
    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v9

    .line 1700
    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v11

    if-eq v6, v9, :cond_d

    .line 1702
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_d
    if-eq v6, v11, :cond_e

    .line 1704
    invoke-static {v1, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    if-nez v6, :cond_c

    goto :goto_9

    .line 1709
    :cond_f
    invoke-static {v1, v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_10
    :goto_9
    move v2, v10

    goto/16 :goto_0

    .line 1714
    :cond_11
    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v9, v12

    if-eqz v9, :cond_12

    .line 1715
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v9

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1716
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v9

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    goto :goto_a

    .line 1718
    :cond_12
    invoke-static {v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :goto_a
    add-int/lit8 v9, v3, -0x1

    if-ge v10, v9, :cond_18

    .line 1721
    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v9, v9, v10

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_18

    add-int/lit8 v4, v10, 0x1

    const/4 v6, 0x1

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto/16 :goto_1

    .line 1678
    :cond_13
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_b
    if-ltz v2, :cond_18

    int-to-char v9, v2

    .line 1679
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v11

    if-nez v11, :cond_14

    .line 1680
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1668
    :cond_15
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_c
    if-ltz v2, :cond_18

    .line 1669
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v9

    if-nez v9, :cond_16

    int-to-char v9, v2

    .line 1670
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_17
    const/16 v2, 0x2f

    .line 1658
    invoke-static {v1, v7, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    const/16 v2, 0x3a

    .line 1659
    iget v9, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v9, v8

    int-to-char v9, v9

    invoke-static {v1, v2, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_18
    :goto_d
    move v2, v10

    goto/16 :goto_1

    :cond_19
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .locals 9

    .line 1384
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 1385
    new-instance v8, Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v7, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v8, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V
    .locals 8

    .line 1393
    new-instance v7, Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 9

    .line 1368
    new-instance v8, Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    iput-object v8, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    .line 2734
    instance-of v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_0

    .line 2736
    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object p0

    .line 2735
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    const/4 p0, 0x0

    throw p0
.end method

.method private static reopIsSimple(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x17

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2564
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntaxError"

    .line 2565
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb

    .line 2556
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2557
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2558
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .locals 0

    if-gt p1, p2, :cond_0

    sub-int/2addr p2, p1

    .line 1200
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    return-void

    .line 1199
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I
    .locals 3

    .line 1766
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1926
    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto/16 :goto_8

    .line 1911
    :pswitch_1
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    .line 1913
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_a

    .line 1914
    iget-object p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p5, p5, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object p2, p5, p2

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1917
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    .line 1896
    :pswitch_2
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    .line 1898
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_a

    .line 1899
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p2, p1, :cond_0

    .line 1900
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p2

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p2, p1, :cond_a

    .line 1902
    :cond_0
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    .line 1886
    :pswitch_3
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    .line 1888
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_a

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_a

    .line 1890
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_4
    add-int/lit8 p2, p4, 0x1

    .line 1874
    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_2

    .line 1876
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p3, p1, :cond_1

    .line 1877
    invoke-static {p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p3

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p3, p1, :cond_2

    .line 1879
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v1, 0x1

    goto :goto_0

    .line 1865
    :pswitch_5
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    .line 1867
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x2

    .line 1869
    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 p2, p4, 0x1

    .line 1856
    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_2

    .line 1857
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p3, :cond_2

    .line 1859
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move p4, p2

    goto/16 :goto_6

    :cond_2
    :goto_0
    move p4, p2

    goto/16 :goto_7

    .line 1847
    :pswitch_7
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    .line 1849
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x2

    .line 1851
    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_7

    .line 1840
    :pswitch_8
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    .line 1842
    invoke-static {p0, p2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_7

    :pswitch_9
    if-eq v0, p5, :cond_a

    .line 1833
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1835
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_a
    if-eq v0, p5, :cond_a

    .line 1827
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1829
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_b
    if-eq v0, p5, :cond_a

    .line 1821
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1823
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_c
    if-eq v0, p5, :cond_a

    .line 1815
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1817
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_d
    if-eq v0, p5, :cond_a

    .line 1809
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1811
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_e
    if-eq v0, p5, :cond_a

    .line 1803
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1805
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_f
    if-eq v0, p5, :cond_a

    .line 1797
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1799
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_6

    :pswitch_10
    if-eqz v0, :cond_4

    add-int/lit8 p2, v0, -0x1

    .line 1793
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x1

    :goto_2
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :pswitch_11
    if-eqz v0, :cond_6

    add-int/lit8 p2, v0, -0x1

    .line 1789
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p2, 0x1

    :goto_4
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_7

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    :goto_5
    const/4 v1, 0x1

    :cond_8
    xor-int/2addr v1, p2

    goto :goto_7

    :pswitch_12
    if-eq v0, p5, :cond_9

    .line 1782
    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_7

    :pswitch_13
    if-eqz v0, :cond_9

    .line 1774
    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_a

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    :pswitch_14
    const/4 v1, 0x1

    :cond_a
    :goto_7
    if-eqz v1, :cond_c

    if-nez p6, :cond_b

    .line 1930
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_b
    return p4

    .line 1933
    :cond_c
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, -0x1

    return p0

    :goto_8
    const/4 p0, 0x0

    .line 1926
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static toASCIIHexDigit(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x39

    if-gt p0, v2, :cond_1

    sub-int/2addr p0, v1

    return p0

    :cond_1
    or-int/lit8 p0, p0, 0x20

    const/16 v1, 0x61

    if-gt v1, p0, :cond_2

    const/16 v2, 0x66

    if-gt p0, v2, :cond_2

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_2
    return v0
.end method

.method private static upcase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_0
    return p0

    .line 427
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ge v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    return p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p3, 0x1

    .line 166
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 4

    .line 176
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_2

    aget-object p2, p3, v1

    instance-of p2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz p2, :cond_2

    .line 177
    array-length p1, p3

    if-le p1, v0, :cond_1

    aget-object p1, p3, v0

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.regexp.compile"

    .line 179
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 181
    :cond_1
    :goto_0
    aget-object p1, p3, v1

    check-cast p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 182
    iget-object p2, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 183
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-object p0

    .line 186
    :cond_2
    array-length p2, p3

    if-eqz p2, :cond_4

    aget-object p2, p3, v1

    instance-of p2, p2, Lorg/mozilla/javascript/Undefined;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    aget-object p2, p3, v1

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    :goto_1
    const-string p2, ""

    .line 187
    :goto_2
    array-length v2, p3

    if-le v2, v0, :cond_5

    aget-object v2, p3, v0

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    .line 190
    :goto_3
    invoke-static {p1, p2, p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const-wide/16 p1, 0x0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2706
    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2709
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2729
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2727
    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p5, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2722
    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p5, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 2723
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 2719
    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p5, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2716
    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2712
    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 2707
    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    .line 2428
    new-instance v10, Lorg/mozilla/javascript/regexp/REGlobalData;

    invoke-direct {v10}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    const/4 v11, 0x0

    .line 2430
    aget v2, p5, v11

    .line 2431
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    if-le v2, v12, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v2

    .line 2437
    :goto_0
    iget-object v3, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-boolean v7, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    move-object v2, v10

    move-object/from16 v4, p4

    move v5, v13

    move v6, v12

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v1, 0x2

    if-eq v9, v1, :cond_1

    return-object v3

    .line 2441
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v1

    .line 2443
    :cond_2
    iget v2, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2444
    aput v2, p5, v11

    .line 2445
    iget v4, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v4, v13

    sub-int v4, v2, v4

    sub-int v5, v2, v4

    if-nez v9, :cond_3

    .line 2455
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v3

    move-object v14, v6

    move-object/from16 v6, p1

    goto :goto_1

    :cond_3
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 2465
    invoke-virtual {v6, v7, v11}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    add-int v14, v5, v4

    .line 2468
    invoke-virtual {v8, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2469
    invoke-interface {v7, v11, v7, v14}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v14, v7

    .line 2472
    :goto_1
    iget-object v15, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-nez v15, :cond_4

    .line 2473
    iput-object v3, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 2474
    sget-object v3, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v3, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_4

    .line 2478
    :cond_4
    new-array v15, v15, [Lorg/mozilla/javascript/regexp/SubString;

    iput-object v15, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    move-object v15, v3

    const/4 v3, 0x0

    .line 2479
    :goto_2
    iget-object v11, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v11, v11, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v3, v11, :cond_7

    .line 2480
    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v11

    const/4 v0, -0x1

    if-eq v11, v0, :cond_5

    .line 2483
    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result v0

    .line 2484
    new-instance v15, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v15, v8, v11, v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    .line 2485
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aput-object v15, v0, v3

    if-eqz v9, :cond_6

    add-int/lit8 v0, v3, 0x1

    .line 2487
    invoke-virtual {v15}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v0, v7, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    add-int/lit8 v0, v3, 0x1

    .line 2491
    sget-object v11, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {v7, v0, v7, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 2494
    :cond_7
    iput-object v15, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    :goto_4
    if-eqz v9, :cond_8

    .line 2502
    iget v0, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "index"

    invoke-interface {v7, v3, v7, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "input"

    .line 2503
    invoke-interface {v7, v0, v7, v8}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2506
    :cond_8
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_9

    .line 2507
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 2508
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 2509
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 2511
    :cond_9
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 2512
    iput v5, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2513
    iput v4, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 2515
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 2516
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_a

    .line 2530
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v13, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2531
    iget v3, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iput v3, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto :goto_5

    .line 2538
    :cond_a
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    const/4 v3, 0x0

    iput v3, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2539
    iget v3, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v13, v3

    iput v13, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 2542
    :goto_5
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 2543
    iput v2, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int/2addr v12, v2

    .line 2544
    iput v12, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-object v14
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 8

    .line 2591
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_1

    .line 2593
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x67

    if-ne v0, v7, :cond_0

    const-string v0, "global"

    const/4 v7, 0x3

    goto :goto_0

    :cond_0
    const/16 v7, 0x73

    if-ne v0, v7, :cond_4

    const-string v0, "source"

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/16 v7, 0x9

    if-ne v0, v7, :cond_3

    .line 2598
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x6c

    if-ne v0, v7, :cond_2

    const-string v0, "lastIndex"

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/16 v7, 0x6d

    if-ne v0, v7, :cond_4

    const-string v0, "multiline"

    const/4 v7, 0x5

    goto :goto_0

    :cond_3
    const/16 v7, 0xa

    if-ne v0, v7, :cond_4

    const-string v0, "ignoreCase"

    const/4 v7, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    .line 2603
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    if-nez v6, :cond_6

    .line 2609
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    if-eq v6, v3, :cond_9

    if-eq v6, v2, :cond_8

    if-eq v6, v5, :cond_8

    if-eq v6, v4, :cond_8

    if-ne v6, v1, :cond_7

    goto :goto_2

    .line 2623
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    :goto_2
    const/4 p1, 0x7

    goto :goto_3

    .line 2614
    :cond_9
    iget p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 2625
    :goto_3
    invoke-static {p1, v6}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 6

    .line 2746
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x74

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2753
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_1

    const-string v0, "toSource"

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_6

    const/4 v2, 0x2

    const-string v0, "toString"

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    const-string v0, "compile"

    goto :goto_1

    :cond_3
    const-string v0, "prefix"

    const/4 v2, 0x6

    goto :goto_1

    .line 2747
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_5

    const-string v0, "exec"

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    const/4 v2, 0x5

    const-string v0, "test"

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_7

    .line 2758
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 v2, 0x0

    :cond_7
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "RegExp"

    return-object v0
.end method

.method getFlags()I
    .locals 1

    .line 2551
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    return v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "multiline"

    return-object p1

    .line 2638
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1

    :cond_1
    const-string p1, "ignoreCase"

    return-object p1

    :cond_2
    const-string p1, "global"

    return-object p1

    :cond_3
    const-string p1, "source"

    return-object p1

    :cond_4
    const-string p1, "lastIndex"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 2654
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2656
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 2652
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2650
    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2648
    :cond_6
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 2646
    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    const-string v0, "object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "prefix"

    goto :goto_1

    :pswitch_1
    const-string v0, "test"

    goto :goto_1

    :pswitch_2
    const-string v0, "exec"

    goto :goto_1

    :pswitch_3
    const-string v1, "toSource"

    goto :goto_0

    :pswitch_4
    const-string v1, "toString"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x2

    const-string v1, "compile"

    move-object v0, v1

    const/4 v1, 0x2

    .line 2699
    :goto_1
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setInstanceIdAttributes(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2679
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void

    .line 2682
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2672
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 2664
    :cond_2
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "(?:)"

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x67

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x69

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0x6d

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
