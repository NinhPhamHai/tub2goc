.class public final Lcom/google/firebase/firestore/proto/NoDocument;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/NoDocument;",
        "Lcom/google/firebase/firestore/proto/NoDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/NoDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 513
    new-instance v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/NoDocument;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    .line 514
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/NoDocument;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 1

    .line 518
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 257
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/NoDocument;",
            ">;"
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 125
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 420
    sget-object v0, Lcom/google/firebase/firestore/proto/NoDocument$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 506
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 497
    :pswitch_0
    sget-object p1, Lcom/google/firebase/firestore/proto/NoDocument;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firebase/firestore/proto/NoDocument;

    monitor-enter p1

    .line 498
    :try_start_0
    sget-object p2, Lcom/google/firebase/firestore/proto/NoDocument;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 499
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firebase/firestore/proto/NoDocument;->PARSER:Lcom/google/protobuf/Parser;

    .line 501
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 503
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firebase/firestore/proto/NoDocument;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 445
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 447
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    .line 452
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    .line 458
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 471
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_4

    .line 472
    iget-object v2, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 474
    :goto_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Timestamp;

    iput-object v3, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_2

    .line 476
    iget-object v3, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 477
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 464
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 466
    iput-object v2, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 487
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 489
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 485
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    :goto_4
    throw p1

    .line 494
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    return-object p1

    .line 434
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 435
    check-cast p3, Lcom/google/firebase/firestore/proto/NoDocument;

    .line 436
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    .line 437
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    .line 436
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    .line 438
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    iget-object p3, p3, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 439
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 431
    :pswitch_4
    new-instance p1, Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    invoke-direct {p1, v0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;-><init>(Lcom/google/firebase/firestore/proto/NoDocument$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 425
    :pswitch_6
    sget-object p1, Lcom/google/firebase/firestore/proto/NoDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/NoDocument;

    return-object p1

    .line 422
    :pswitch_7
    new-instance p1, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/NoDocument;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 179
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_2
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    return-void
.end method
