.class public final Lcom/google/firestore/v1/Target$DocumentsTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentsTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$DocumentsTarget;",
        "Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$DocumentsTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private documents_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 566
    new-instance v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 567
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 84
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Target$DocumentsTarget;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->addDocuments(Ljava/lang/String;)V

    return-void
.end method

.method private addDocuments(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->ensureDocumentsIsMutable()V

    .line 182
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private ensureDocumentsIsMutable()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 145
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 571
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1

    .line 320
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$DocumentsTarget;",
            ">;"
        }
    .end annotation

    .line 577
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 484
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 559
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 550
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    monitor-enter p1

    .line 551
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 552
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 554
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 556
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 508
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 510
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 515
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    const/16 v1, 0x12

    if-eq p3, v1, :cond_3

    .line 521
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 527
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 528
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 529
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 530
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 540
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 542
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 538
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 543
    :goto_3
    throw p1

    .line 547
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object p1

    .line 499
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 500
    check-cast p3, Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 501
    iget-object p1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 502
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 496
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object p1

    .line 492
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 489
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object p1

    .line 486
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;-><init>()V

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

.method public getDocuments(I)Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 241
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 249
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 252
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocumentsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 254
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

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

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x2

    .line 236
    iget-object v2, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
