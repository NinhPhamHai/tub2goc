.class public final Lcom/google/firestore/v1/DocumentTransform;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/DocumentTransformOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentTransform$Builder;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransform;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentTransformOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentTransform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private document_:Ljava/lang/String;

.field private fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2756
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentTransform;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    .line 2757
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2900()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/firestore/v1/DocumentTransform;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->setDocument(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method private addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2229
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2230
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2227
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private ensureFieldTransformsIsMutable()V
    .locals 1

    .line 2179
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2181
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 2761
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1

    .line 2407
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentTransform;",
            ">;"
        }
    .end annotation

    .line 2767
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2084
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    return-void

    .line 2081
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2665
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2749
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2740
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/DocumentTransform;

    monitor-enter p1

    .line 2741
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2742
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    .line 2744
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2746
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 2692
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 2694
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    .line 2699
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    .line 2705
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 2717
    :cond_3
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2718
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2719
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2721
    :cond_4
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2722
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2721
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2711
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2713
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2730
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2732
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2728
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2733
    :goto_3
    throw p1

    .line 2737
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object p1

    .line 2680
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2681
    check-cast p3, Lcom/google/firestore/v1/DocumentTransform;

    .line 2682
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2683
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2682
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2684
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2685
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_8

    .line 2687
    iget p1, p0, Lcom/google/firestore/v1/DocumentTransform;->bitField0_:I

    iget p2, p3, Lcom/google/firestore/v1/DocumentTransform;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firestore/v1/DocumentTransform;->bitField0_:I

    :cond_8
    return-object p0

    .line 2677
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/DocumentTransform$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/DocumentTransform$Builder;-><init>(Lcom/google/firestore/v1/DocumentTransform$1;)V

    return-object p1

    .line 2673
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 2670
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object p1

    .line 2667
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentTransform;-><init>()V

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

    .line 2058
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 2126
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2329
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2335
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform;->getDocument()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2337
    :goto_0
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 2338
    iget-object v3, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2339
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2341
    :cond_2
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

    .line 2320
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform;->getDocument()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 2323
    :goto_0
    iget-object v1, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 2324
    iget-object v2, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
