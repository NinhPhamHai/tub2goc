.class public final Lcom/google/firestore/v1/ArrayValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ArrayValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ArrayValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private values_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 535
    new-instance v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {v0}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    .line 536
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->addValues(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method private addValues(Lcom/google/firestore/v1/Value;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 121
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private ensureValuesIsMutable()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 78
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 540
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 279
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ArrayValue;",
            ">;"
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 453
    sget-object v0, Lcom/google/firestore/v1/ArrayValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 528
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 519
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/ArrayValue;

    monitor-enter p1

    .line 520
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 521
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 523
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 525
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 477
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 479
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 484
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 490
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 498
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 501
    invoke-static {}, Lcom/google/firestore/v1/Value;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 500
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 509
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 511
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 507
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 512
    :goto_3
    throw p1

    .line 516
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object p1

    .line 468
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 469
    check-cast p3, Lcom/google/firestore/v1/ArrayValue;

    .line 470
    iget-object p1, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 471
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 465
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/ArrayValue$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>(Lcom/google/firestore/v1/ArrayValue$1;)V

    return-object p1

    .line 461
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 458
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object p1

    .line 455
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p1}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 4

    .line 205
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 211
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
