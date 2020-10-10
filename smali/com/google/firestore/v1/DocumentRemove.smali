.class public final Lcom/google/firestore/v1/DocumentRemove;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/DocumentRemoveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentRemove$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentRemove;",
        "Lcom/google/firestore/v1/DocumentRemove$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentRemoveOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentRemove;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private document_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private removedTargetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 733
    new-instance v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentRemove;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    .line 734
    sget-object v0, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentRemove;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentRemove;
    .locals 1

    .line 738
    sget-object v0, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentRemove;",
            ">;"
        }
    .end annotation

    .line 744
    sget-object v0, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 616
    sget-object v0, Lcom/google/firestore/v1/DocumentRemove$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 726
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 717
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/DocumentRemove;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/DocumentRemove;

    monitor-enter p1

    .line 718
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/DocumentRemove;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 719
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/DocumentRemove;->PARSER:Lcom/google/protobuf/Parser;

    .line 721
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 723
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/DocumentRemove;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 644
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 646
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_c

    .line 651
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0x10

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    .line 657
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 691
    :cond_3
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_4

    .line 692
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp$Builder;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 694
    :goto_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Timestamp;

    iput-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_2

    .line 696
    iget-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 697
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 677
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 678
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v2

    .line 679
    iget-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_6

    .line 680
    iget-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 681
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 683
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_7

    .line 684
    iget-object v3, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 686
    :cond_7
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 669
    :cond_8
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 670
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 671
    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 673
    :cond_9
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 663
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 665
    iput-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_b
    :goto_4
    const/4 p1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 707
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 709
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 705
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 710
    :goto_5
    throw p1

    .line 714
    :cond_c
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    return-object p1

    .line 631
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 632
    check-cast p3, Lcom/google/firestore/v1/DocumentRemove;

    .line 633
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    .line 634
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    .line 633
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    .line 635
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    iget-object v0, p3, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 636
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    iget-object v0, p3, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 637
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_d

    .line 639
    iget p1, p0, Lcom/google/firestore/v1/DocumentRemove;->bitField0_:I

    iget p2, p3, Lcom/google/firestore/v1/DocumentRemove;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firestore/v1/DocumentRemove;->bitField0_:I

    :cond_d
    return-object p0

    .line 628
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/DocumentRemove$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/DocumentRemove$Builder;-><init>(Lcom/google/firestore/v1/DocumentRemove$1;)V

    return-object p1

    .line 624
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 621
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/DocumentRemove;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentRemove;

    return-object p1

    .line 618
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/DocumentRemove;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentRemove;-><init>()V

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

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 277
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getDocument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 287
    :goto_1
    iget-object v4, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 289
    invoke-interface {v4, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 292
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 294
    iget-object v1, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 296
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_3
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

    .line 264
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getSerializedSize()I

    .line 265
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->document_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getDocument()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 269
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentRemove;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 272
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_2
    return-void
.end method
