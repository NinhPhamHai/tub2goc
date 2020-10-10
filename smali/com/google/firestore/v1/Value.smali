.class public final Lcom/google/firestore/v1/Value;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Value$Builder;,
        Lcom/google/firestore/v1/Value$ValueTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private valueTypeCase_:I

.field private valueType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1827
    new-instance v0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0}, Lcom/google/firestore/v1/Value;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    .line 1828
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setTimestampValue(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setBytesValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Value;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setNullValueValue(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setReferenceValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setGeoPointValue(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setMapValue(Lcom/google/firestore/v1/MapValue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Value;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setBooleanValue(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Value;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setIntegerValue(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Value;D)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setDoubleValue(D)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1832
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 947
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 1838
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 664
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 665
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void

    .line 662
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setBooleanValue(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setBytesValue(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    .line 465
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 466
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setDoubleValue(D)V
    .locals 1

    const/4 v0, 0x3

    .line 248
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 249
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setGeoPointValue(Lcom/google/type/LatLng;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 589
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 590
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void

    .line 587
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setIntegerValue(J)V
    .locals 1

    const/4 v0, 0x2

    .line 209
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 210
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setMapValue(Lcom/google/firestore/v1/MapValue;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 741
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 742
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void

    .line 739
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setNullValueValue(I)V
    .locals 1

    const/16 v0, 0xb

    .line 117
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setReferenceValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 529
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 530
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void

    .line 527
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x11

    .line 397
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 398
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTimestampValue(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 294
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 295
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    .line 1590
    sget-object v0, Lcom/google/firestore/v1/Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x12

    const/16 v4, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xb

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/16 v11, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1811
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v2, Lcom/google/firestore/v1/Value;

    monitor-enter v2

    .line 1812
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 1813
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 1815
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1817
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1684
    :pswitch_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1686
    move-object/from16 v15, p3

    check-cast v15, Lcom/google/protobuf/ExtensionRegistryLite;

    :goto_1
    if-nez v13, :cond_b

    .line 1691
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 1697
    invoke-virtual {v0, v12}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v7

    goto/16 :goto_7

    .line 1792
    :sswitch_0
    iput v3, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1793
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v12

    iput-object v12, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_8

    .line 1786
    :sswitch_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v12

    .line 1787
    iput v4, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1788
    iput-object v12, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_8

    .line 1780
    :sswitch_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v12

    .line 1781
    iput v7, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1782
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_8

    .line 1767
    :sswitch_3
    iget v12, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v12, v11, :cond_2

    .line 1768
    iget-object v12, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v12, Lcom/google/protobuf/Timestamp;

    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 1771
    :goto_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    if-eqz v12, :cond_3

    .line 1773
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/Timestamp;

    invoke-virtual {v12, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1774
    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 1776
    :cond_3
    iput v11, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    goto/16 :goto_8

    .line 1753
    :sswitch_4
    iget v7, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v7, v9, :cond_4

    .line 1754
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/firestore/v1/ArrayValue$Builder;

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 1757
    :goto_3
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    if-eqz v12, :cond_5

    .line 1759
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v12, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1760
    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 1762
    :cond_5
    iput v9, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    goto/16 :goto_8

    .line 1739
    :sswitch_5
    iget v7, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v7, v10, :cond_6

    .line 1740
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/type/LatLng;

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/type/LatLng$Builder;

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 1743
    :goto_4
    invoke-static {}, Lcom/google/type/LatLng;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    if-eqz v12, :cond_7

    .line 1745
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/type/LatLng;

    invoke-virtual {v12, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1746
    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 1748
    :cond_7
    iput v10, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    goto :goto_8

    .line 1725
    :sswitch_6
    iget v7, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v7, v8, :cond_8

    .line 1726
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/MapValue;

    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/firestore/v1/MapValue$Builder;

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 1729
    :goto_5
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v15}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    if-eqz v12, :cond_9

    .line 1731
    iget-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/MapValue;

    invoke-virtual {v12, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1732
    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 1734
    :cond_9
    iput v8, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    goto :goto_8

    .line 1718
    :sswitch_7
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v7

    .line 1719
    iput v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1720
    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_8

    .line 1713
    :sswitch_8
    iput v5, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1714
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_8

    .line 1708
    :sswitch_9
    iput v6, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1709
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_8

    .line 1703
    :sswitch_a
    iput v14, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 1704
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :goto_6
    :sswitch_b
    const/4 v13, 0x1

    goto :goto_8

    :goto_7
    if-nez v7, :cond_a

    goto :goto_6

    :cond_a
    :goto_8
    const/16 v7, 0xb

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 1801
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1803
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 1799
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1804
    :goto_9
    throw v0

    .line 1808
    :cond_b
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0

    .line 1604
    :pswitch_3
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1605
    move-object/from16 v7, p3

    check-cast v7, Lcom/google/firestore/v1/Value;

    .line 1606
    sget-object v12, Lcom/google/firestore/v1/Value$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v12, v12, v15

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_a

    .line 1671
    :pswitch_4
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-eqz v2, :cond_c

    const/4 v13, 0x1

    :cond_c
    invoke-interface {v0, v13}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto/16 :goto_a

    .line 1664
    :pswitch_5
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v8, :cond_d

    const/4 v13, 0x1

    :cond_d
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_a

    .line 1657
    :pswitch_6
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v9, :cond_e

    const/4 v13, 0x1

    :cond_e
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_a

    .line 1650
    :pswitch_7
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v10, :cond_f

    const/4 v13, 0x1

    :cond_f
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_a

    .line 1645
    :pswitch_8
    iget v3, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v3, v2, :cond_10

    const/4 v13, 0x1

    :cond_10
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto/16 :goto_a

    .line 1640
    :pswitch_9
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    :cond_11
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1635
    :pswitch_a
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v4, :cond_12

    const/4 v13, 0x1

    :cond_12
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1628
    :pswitch_b
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v11, :cond_13

    const/4 v13, 0x1

    :cond_13
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1623
    :pswitch_c
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v5, :cond_14

    const/4 v13, 0x1

    :cond_14
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1618
    :pswitch_d
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v6, :cond_15

    const/4 v13, 0x1

    :cond_15
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1613
    :pswitch_e
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-ne v2, v14, :cond_16

    const/4 v13, 0x1

    :cond_16
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_a

    .line 1608
    :pswitch_f
    iget v2, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_17

    const/4 v13, 0x1

    :cond_17
    iget-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    iget-object v3, v7, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    invoke-interface {v0, v13, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 1675
    :goto_a
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_18

    .line 1677
    iget v0, v7, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    if-eqz v0, :cond_18

    .line 1678
    iput v0, v1, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    :cond_18
    return-object v1

    .line 1601
    :pswitch_10
    new-instance v0, Lcom/google/firestore/v1/Value$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/firestore/v1/Value$Builder;-><init>(Lcom/google/firestore/v1/Value$1;)V

    return-object v0

    :pswitch_11
    const/4 v2, 0x0

    return-object v2

    .line 1595
    :pswitch_12
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0

    .line 1592
    :pswitch_13
    new-instance v0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0}, Lcom/google/firestore/v1/Value;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x19 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public getArrayValue()Lcom/google/firestore/v1/ArrayValue;
    .locals 2

    .line 646
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    return-object v0

    .line 649
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 447
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 450
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 235
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGeoPointValue()Lcom/google/type/LatLng;
    .locals 2

    .line 573
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0

    .line 576
    :cond_0
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()J
    .locals 2

    .line 196
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMapValue()Lcom/google/firestore/v1/MapValue;
    .locals 2

    .line 725
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    return-object v0

    .line 728
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 2

    .line 495
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 829
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 833
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 834
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 836
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 835
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    :cond_1
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 839
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 841
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 840
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_2
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 844
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    .line 846
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 845
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    :cond_3
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 850
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 852
    :cond_4
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 853
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/MapValue;

    .line 854
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    :cond_5
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 857
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/type/LatLng;

    .line 858
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    :cond_6
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    .line 861
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/ArrayValue;

    .line 862
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 864
    :cond_7
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 865
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Timestamp;

    .line 866
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_8
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    .line 869
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 870
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 872
    :cond_9
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_a

    .line 874
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    :cond_a
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_b

    .line 877
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 878
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    :cond_b
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 359
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTimestampValue()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 276
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 279
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 790
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 791
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 790
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 793
    :cond_0
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 794
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 794
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 797
    :cond_1
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 798
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 799
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 798
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 801
    :cond_2
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 802
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 804
    :cond_3
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 805
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 807
    :cond_4
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 808
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 810
    :cond_5
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 811
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 813
    :cond_6
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 814
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 816
    :cond_7
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    .line 817
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 819
    :cond_8
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    .line 820
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 822
    :cond_9
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_a

    .line 823
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_a
    return-void
.end method
