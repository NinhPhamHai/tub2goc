.class public final Lcom/google/firestore/v1/StructuredQuery$Projection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Projection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Projection;",
        "Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Projection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5329
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5330
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4760
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4761
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7300()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 4755
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 5334
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Projection;",
            ">;"
        }
    .end annotation

    .line 5340
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 5247
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5322
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5313
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    monitor-enter p1

    .line 5314
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5315
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    .line 5317
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5319
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 5271
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 5273
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 5278
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    .line 5284
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 5290
    :cond_3
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5291
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5292
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5294
    :cond_4
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5295
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 5294
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

    .line 5303
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5305
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5301
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5306
    :goto_3
    throw p1

    .line 5310
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object p1

    .line 5262
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 5263
    check-cast p3, Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5264
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5265
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5259
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    invoke-direct {p1, v0}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 5255
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 5252
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object p1

    .line 5249
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$Projection;-><init>()V

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

    .line 4975
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4979
    :goto_0
    iget-object v2, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    .line 4980
    iget-object v3, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4981
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4983
    :cond_1
    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4969
    :goto_0
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x2

    .line 4970
    iget-object v2, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
