.class public final Lcom/google/firebase/firestore/proto/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/Target$Builder;,
        Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/Target;",
        "Lcom/google/firebase/firestore/proto/Target$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/Target;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lcom/google/protobuf/ByteString;

.field private snapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1332
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    .line 1333
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 22
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/proto/Target;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->setLastListenSequenceNumber(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/Target;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastLimboFreeSnapshotVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearLastLimboFreeSnapshotVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 674
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 422
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 423
    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 504
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    return-void

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setLastListenSequenceNumber(J)V
    .locals 0

    .line 303
    iput-wide p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-void
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 351
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 352
    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-void

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 144
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setTargetId(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1161
    sget-object v0, Lcom/google/firebase/firestore/proto/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1316
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v2, Lcom/google/firebase/firestore/proto/Target;

    monitor-enter v2

    .line 1317
    :try_start_0
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 1318
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 1320
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1322
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1214
    :pswitch_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1216
    move-object/from16 v7, p3

    check-cast v7, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v5, :cond_11

    .line 1221
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v8

    if-eqz v8, :cond_10

    const/16 v9, 0x8

    if-eq v8, v9, :cond_f

    const/16 v9, 0x12

    if-eq v8, v9, :cond_d

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_c

    const/16 v9, 0x20

    if-eq v8, v9, :cond_b

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_8

    const/16 v9, 0x32

    if-eq v8, v9, :cond_5

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_3

    .line 1227
    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_6

    .line 1290
    :cond_3
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v8, :cond_4

    .line 1291
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_2

    :cond_4
    move-object v8, v4

    .line 1293
    :goto_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protobuf/Timestamp;

    iput-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v8, :cond_2

    .line 1295
    iget-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1296
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/Timestamp;

    iput-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 1276
    :cond_5
    iget v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-ne v8, v2, :cond_6

    .line 1277
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v8, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v8

    check-cast v8, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    goto :goto_3

    :cond_6
    move-object v8, v4

    .line 1280
    :goto_3
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->parser()Lcom/google/protobuf/Parser;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 1282
    iget-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v9, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1283
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    iput-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 1285
    :cond_7
    iput v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    goto/16 :goto_1

    .line 1262
    :cond_8
    iget v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-ne v8, v3, :cond_9

    .line 1263
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v8, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v8

    check-cast v8, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    goto :goto_4

    :cond_9
    move-object v8, v4

    .line 1266
    :goto_4
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->parser()Lcom/google/protobuf/Parser;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    if-eqz v8, :cond_a

    .line 1268
    iget-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v9, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1269
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    iput-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 1271
    :cond_a
    iput v3, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    goto/16 :goto_1

    .line 1257
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    goto/16 :goto_1

    .line 1252
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    .line 1239
    :cond_d
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v8, :cond_e

    .line 1240
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_5

    :cond_e
    move-object v8, v4

    .line 1242
    :goto_5
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protobuf/Timestamp;

    iput-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v8, :cond_2

    .line 1244
    iget-object v9, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1245
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/Timestamp;

    iput-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_1

    .line 1234
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetId_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_10
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1306
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1308
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 1304
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1309
    :goto_7
    throw v0

    .line 1313
    :cond_11
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0

    .line 1175
    :pswitch_3
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1176
    move-object/from16 v4, p3

    check-cast v4, Lcom/google/firebase/firestore/proto/Target;

    .line 1177
    iget v7, v1, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    :goto_8
    iget v8, v1, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    iget v9, v4, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    goto :goto_9

    :cond_13
    const/4 v9, 0x0

    :goto_9
    iget v10, v4, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v7

    iput v7, v1, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    .line 1179
    iget-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    iget-object v8, v4, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-interface {v0, v7, v8}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Timestamp;

    iput-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 1180
    iget-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    sget-object v8, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v7, v8, :cond_14

    const/4 v7, 0x1

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    :goto_a
    iget-object v8, v1, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    iget-object v9, v4, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    sget-object v10, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v9, v10, :cond_15

    const/4 v9, 0x1

    goto :goto_b

    :cond_15
    const/4 v9, 0x0

    :goto_b
    iget-object v10, v4, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 1182
    iget-wide v7, v1, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_16

    const/4 v8, 0x1

    goto :goto_c

    :cond_16
    const/4 v8, 0x0

    :goto_c
    iget-wide v11, v1, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    iget-wide v13, v4, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    cmp-long v7, v13, v9

    if-eqz v7, :cond_17

    const/4 v13, 0x1

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    :goto_d
    iget-wide v14, v4, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    move-object v7, v0

    move-wide v9, v11

    move v11, v13

    move-wide v12, v14

    invoke-interface/range {v7 .. v13}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    .line 1184
    iget-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    iget-object v8, v4, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    invoke-interface {v0, v7, v8}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Timestamp;

    iput-object v7, v1, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 1185
    sget-object v7, Lcom/google/firebase/firestore/proto/Target$1;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_1c

    const/4 v3, 0x2

    if-eq v7, v3, :cond_1a

    const/4 v2, 0x3

    if-eq v7, v2, :cond_18

    goto :goto_e

    .line 1201
    :cond_18
    iget v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-eqz v2, :cond_19

    const/4 v5, 0x1

    :cond_19
    invoke-interface {v0, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_e

    .line 1194
    :cond_1a
    iget v3, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-ne v3, v2, :cond_1b

    const/4 v5, 0x1

    :cond_1b
    iget-object v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    invoke-interface {v0, v5, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_e

    .line 1187
    :cond_1c
    iget v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-ne v2, v3, :cond_1d

    const/4 v5, 0x1

    :cond_1d
    iget-object v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    invoke-interface {v0, v5, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 1205
    :goto_e
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_1e

    .line 1207
    iget v0, v4, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    if-eqz v0, :cond_1e

    .line 1208
    iput v0, v1, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    :cond_1e
    return-object v1

    .line 1172
    :pswitch_4
    new-instance v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-direct {v0, v4}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>(Lcom/google/firebase/firestore/proto/Target$1;)V

    return-object v0

    :pswitch_5
    return-object v4

    .line 1166
    :pswitch_6
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0

    .line 1163
    :pswitch_7
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    return-object v0

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

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 2

    .line 406
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 409
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 2

    .line 335
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 576
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 580
    iget v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 582
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 586
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 589
    iget-object v2, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 590
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 592
    :cond_3
    iget-wide v1, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 594
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 596
    :cond_4
    iget v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 597
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Target$QueryTarget;

    .line 598
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 600
    :cond_5
    iget v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 601
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 602
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 606
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_7
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 553
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 556
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 559
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 561
    :cond_2
    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 562
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 564
    :cond_3
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 565
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 567
    :cond_4
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 568
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 570
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 571
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    return-void
.end method
