.class public final Lcom/google/firestore/v1/Write;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/WriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Write$Builder;,
        Lcom/google/firestore/v1/Write$OperationCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Write;",
        "Lcom/google/firestore/v1/Write$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentDocument_:Lcom/google/firestore/v1/Precondition;

.field private operationCase_:I

.field private operation_:Ljava/lang/Object;

.field private updateMask_:Lcom/google/firestore/v1/DocumentMask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1386
    new-instance v0, Lcom/google/firestore/v1/Write;

    invoke-direct {v0}, Lcom/google/firestore/v1/Write;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    .line 1387
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Write;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setTransform(Lcom/google/firestore/v1/DocumentTransform$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setUpdate(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setVerify(Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 712
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 1397
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 549
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    return-void

    .line 547
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setDelete(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 183
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 184
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTransform(Lcom/google/firestore/v1/DocumentTransform$Builder;)V
    .locals 0

    .line 349
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 350
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private setUpdate(Lcom/google/firestore/v1/Document;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 93
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 446
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    return-void

    .line 444
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setVerify(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 266
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 267
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    return-void

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1214
    sget-object v0, Lcom/google/firestore/v1/Write$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1370
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/Write;

    monitor-enter p1

    .line 1371
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1372
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    .line 1374
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1376
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 1271
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1273
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v3, :cond_10

    .line 1278
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v6, 0xa

    if-eq p1, v6, :cond_c

    const/16 v6, 0x12

    if-eq p1, v6, :cond_b

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_9

    const/16 v6, 0x22

    if-eq p1, v6, :cond_7

    const/16 v6, 0x2a

    if-eq p1, v6, :cond_6

    const/16 v6, 0x32

    if-eq p1, v6, :cond_3

    .line 1284
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 1343
    :cond_3
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v0, :cond_4

    .line 1344
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentTransform$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 1347
    :goto_2
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 1349
    iget-object v6, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v6, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1350
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 1352
    :cond_5
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    goto :goto_1

    .line 1336
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 1337
    iput v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 1338
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_1

    .line 1324
    :cond_7
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz p1, :cond_8

    .line 1325
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition$Builder;

    goto :goto_3

    :cond_8
    move-object p1, v4

    .line 1327
    :goto_3
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Precondition;

    iput-object v6, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz p1, :cond_2

    .line 1329
    iget-object v6, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1330
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    goto/16 :goto_1

    .line 1311
    :cond_9
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz p1, :cond_a

    .line 1312
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v4

    .line 1314
    :goto_4
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/DocumentMask;

    iput-object v6, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz p1, :cond_2

    .line 1316
    iget-object v6, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1317
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    goto/16 :goto_1

    .line 1304
    :cond_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 1305
    iput v2, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 1306
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1291
    :cond_c
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v5, :cond_d

    .line 1292
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document$Builder;

    goto :goto_5

    :cond_d
    move-object p1, v4

    .line 1295
    :goto_5
    invoke-static {}, Lcom/google/firestore/v1/Document;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 1297
    iget-object v6, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v6, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1298
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 1300
    :cond_e
    iput v5, p0, Lcom/google/firestore/v1/Write;->operationCase_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 1360
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1362
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1358
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1363
    :goto_7
    throw p1

    .line 1367
    :cond_10
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object p1

    .line 1228
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1229
    check-cast p3, Lcom/google/firestore/v1/Write;

    .line 1230
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    iget-object v4, p3, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    invoke-interface {p2, p1, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 1231
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    iget-object v4, p3, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    invoke-interface {p2, p1, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 1232
    sget-object p1, Lcom/google/firestore/v1/Write$1;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    invoke-virtual {p3}, Lcom/google/firestore/v1/Write;->getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v5, :cond_19

    if-eq p1, v2, :cond_17

    const/4 v2, 0x3

    if-eq p1, v2, :cond_15

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    if-eq p1, v1, :cond_11

    goto :goto_8

    .line 1258
    :cond_11
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    :cond_12
    invoke-interface {p2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_8

    .line 1251
    :cond_13
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v0, :cond_14

    const/4 v3, 0x1

    :cond_14
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_8

    .line 1246
    :cond_15
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v1, :cond_16

    const/4 v3, 0x1

    :cond_16
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_8

    .line 1241
    :cond_17
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v2, :cond_18

    const/4 v3, 0x1

    :cond_18
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_8

    .line 1234
    :cond_19
    iget p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-ne p1, v5, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    iget-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 1262
    :goto_8
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1b

    .line 1264
    iget p1, p3, Lcom/google/firestore/v1/Write;->operationCase_:I

    if-eqz p1, :cond_1b

    .line 1265
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    :cond_1b
    return-object p0

    .line 1225
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/Write$Builder;

    invoke-direct {p1, v4}, Lcom/google/firestore/v1/Write$Builder;-><init>(Lcom/google/firestore/v1/Write$1;)V

    return-object p1

    :pswitch_5
    return-object v4

    .line 1219
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object p1

    .line 1216
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/Write;

    invoke-direct {p1}, Lcom/google/firestore/v1/Write;-><init>()V

    return-object p1

    nop

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

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Write$OperationCase;->forNumber(I)Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 618
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 622
    iget v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 623
    iget-object v1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 624
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    :cond_1
    iget v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getDelete()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 632
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 636
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 638
    :cond_4
    iget v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 640
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getVerify()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_5
    iget v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 643
    iget-object v1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform;

    .line 644
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_6
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getTransform()Lcom/google/firestore/v1/DocumentTransform;
    .locals 2

    .line 315
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0

    .line 318
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 76
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVerify()Ljava/lang/String;
    .locals 2

    .line 230
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 600
    :cond_0
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getDelete()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 604
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 607
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 609
    :cond_3
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 610
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write;->getVerify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 612
    :cond_4
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 613
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    return-void
.end method
