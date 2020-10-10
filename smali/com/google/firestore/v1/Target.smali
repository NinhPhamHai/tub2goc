.class public final Lcom/google/firestore/v1/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$Builder;,
        Lcom/google/firestore/v1/Target$ResumeTypeCase;,
        Lcom/google/firestore/v1/Target$TargetTypeCase;,
        Lcom/google/firestore/v1/Target$QueryTarget;,
        Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;,
        Lcom/google/firestore/v1/Target$DocumentsTarget;,
        Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target;",
        "Lcom/google/firestore/v1/Target$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private once_:Z

.field private resumeTypeCase_:I

.field private resumeType_:Ljava/lang/Object;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2328
    new-instance v0, Lcom/google/firestore/v1/Target;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    .line 2329
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1240
    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1283
    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    return-void
.end method

.method static synthetic access$1700()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firestore/v1/Target;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setTargetId(I)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 1793
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation

    .line 2339
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1422
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1423
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    return-void

    .line 1420
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1351
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1352
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    return-void

    .line 1349
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1495
    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1496
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    return-void

    .line 1493
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTargetId(I)V
    .locals 0

    .line 1620
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 2152
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/16 v1, 0xb

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2321
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2312
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/Target;

    monitor-enter p1

    .line 2313
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2314
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 2316
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2318
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 2222
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 2224
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v5, :cond_10

    .line 2229
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v7, 0x12

    if-eq p1, v7, :cond_c

    const/16 v7, 0x1a

    if-eq p1, v7, :cond_9

    const/16 v7, 0x22

    if-eq p1, v7, :cond_8

    const/16 v7, 0x28

    if-eq p1, v7, :cond_7

    const/16 v7, 0x30

    if-eq p1, v7, :cond_6

    const/16 v7, 0x5a

    if-eq p1, v7, :cond_3

    .line 2235
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 2285
    :cond_3
    iget p1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    if-ne p1, v1, :cond_4

    .line 2286
    iget-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 2289
    :goto_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 2291
    iget-object v7, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/Timestamp;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2292
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2294
    :cond_5
    iput v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    goto :goto_1

    .line 2280
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    goto :goto_1

    .line 2275
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    goto :goto_1

    .line 2269
    :cond_8
    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 2270
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    goto :goto_1

    .line 2256
    :cond_9
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-ne p1, v2, :cond_a

    .line 2257
    iget-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    goto :goto_3

    :cond_a
    move-object p1, v4

    .line 2260
    :goto_3
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 2262
    iget-object v7, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2263
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 2265
    :cond_b
    iput v2, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    goto/16 :goto_1

    .line 2242
    :cond_c
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-ne p1, v3, :cond_d

    .line 2243
    iget-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    goto :goto_4

    :cond_d
    move-object p1, v4

    .line 2246
    :goto_4
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 2248
    iget-object v7, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v7, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2249
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 2251
    :cond_e
    iput v3, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 2302
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2304
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2300
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2305
    :goto_6
    throw p1

    .line 2309
    :cond_10
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object p1

    .line 2166
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2167
    check-cast p3, Lcom/google/firestore/v1/Target;

    .line 2168
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_7

    :cond_11
    const/4 p1, 0x0

    :goto_7
    iget v4, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    iget v7, p3, Lcom/google/firestore/v1/Target;->targetId_:I

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    :goto_8
    iget v8, p3, Lcom/google/firestore/v1/Target;->targetId_:I

    invoke-interface {p2, p1, v4, v7, v8}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    .line 2170
    iget-boolean p1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    iget-boolean v4, p3, Lcom/google/firestore/v1/Target;->once_:Z

    invoke-interface {p2, p1, p1, v4, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    .line 2172
    sget-object p1, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$firestore$v1$Target$TargetTypeCase:[I

    invoke-virtual {p3}, Lcom/google/firestore/v1/Target;->getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v6, :cond_17

    if-eq p1, v3, :cond_15

    if-eq p1, v2, :cond_13

    goto :goto_c

    .line 2188
    :cond_13
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_9

    :cond_14
    const/4 p1, 0x0

    :goto_9
    invoke-interface {p2, p1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_c

    .line 2181
    :cond_15
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-ne p1, v2, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    :goto_a
    iget-object v4, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    iget-object v7, p3, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_c

    .line 2174
    :cond_17
    iget p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-ne p1, v3, :cond_18

    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    :goto_b
    iget-object v4, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    iget-object v7, p3, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 2192
    :goto_c
    sget-object p1, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$firestore$v1$Target$ResumeTypeCase:[I

    invoke-virtual {p3}, Lcom/google/firestore/v1/Target;->getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v6, :cond_1d

    if-eq p1, v3, :cond_1b

    if-eq p1, v2, :cond_19

    goto :goto_d

    .line 2206
    :cond_19
    iget p1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    if-eqz p1, :cond_1a

    const/4 v5, 0x1

    :cond_1a
    invoke-interface {p2, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_d

    .line 2199
    :cond_1b
    iget p1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    if-ne p1, v1, :cond_1c

    const/4 v5, 0x1

    :cond_1c
    iget-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    invoke-interface {p2, v5, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    goto :goto_d

    .line 2194
    :cond_1d
    iget p1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    if-ne p1, v0, :cond_1e

    const/4 v5, 0x1

    :cond_1e
    iget-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    invoke-interface {p2, v5, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2210
    :goto_d
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_20

    .line 2212
    iget p1, p3, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    if-eqz p1, :cond_1f

    .line 2213
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 2215
    :cond_1f
    iget p1, p3, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    if-eqz p1, :cond_20

    .line 2216
    iput p1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    :cond_20
    return-object p0

    .line 2163
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/Target$Builder;

    invoke-direct {p1, v4}, Lcom/google/firestore/v1/Target$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object p1

    :pswitch_5
    return-object v4

    .line 2157
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object p1

    .line 2154
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/Target;

    invoke-direct {p1}, Lcom/google/firestore/v1/Target;-><init>()V

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

.method public getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;
    .locals 1

    .line 1317
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$ResumeTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$ResumeTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1698
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1702
    iget v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1703
    iget-object v1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1704
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    :cond_1
    iget v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1707
    iget-object v1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1708
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_2
    iget v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1711
    iget-object v1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1712
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1715
    :cond_3
    iget v1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 1717
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1719
    :cond_4
    iget-boolean v1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 1721
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1723
    :cond_5
    iget v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 1724
    iget-object v1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Timestamp;

    .line 1725
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1727
    :cond_6
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1274
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$TargetTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1679
    :cond_0
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1682
    :cond_1
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1686
    :cond_2
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 1687
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1689
    :cond_3
    iget-boolean v0, p0, Lcom/google/firestore/v1/Target;->once_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 1690
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1692
    :cond_4
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 1693
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    return-void
.end method
