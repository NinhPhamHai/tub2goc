.class public final Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionSelector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allDescendants_:Z

.field private collectionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 598
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 599
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 174
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 168
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;Z)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->setAllDescendants(Z)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    .locals 1

    .line 377
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllDescendants(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return-void
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 512
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 591
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 582
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    monitor-enter p1

    .line 583
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 584
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    .line 586
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 588
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 538
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 540
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 545
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_5

    const/16 v0, 0x12

    if-eq p3, v0, :cond_4

    const/16 v0, 0x18

    if-eq p3, v0, :cond_3

    .line 551
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 564
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    goto :goto_1

    .line 557
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 559
    iput-object p3, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;
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

    .line 572
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 574
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 570
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 575
    :goto_3
    throw p1

    .line 579
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p1

    .line 526
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 527
    check-cast p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 528
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    .line 529
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    .line 528
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    .line 530
    iget-boolean p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    iget-boolean p3, p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    .line 532
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 523
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 517
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p1

    .line 514
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;-><init>()V

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

.method public getAllDescendants()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    return v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 299
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 305
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_1
    iget-boolean v1, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 309
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
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

    .line 290
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->collectionId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 291
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->allDescendants_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 294
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    return-void
.end method
