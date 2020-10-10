.class public final Lcom/google/firestore/v1/StructuredQuery$Order;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Order;",
        "Lcom/google/firestore/v1/StructuredQuery$Order$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private direction_:I

.field private field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4377
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 4378
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3904
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5900()Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 3899
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3899
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    .line 3899
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4130
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 4388
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4027
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Direction;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return-void

    .line 4024
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3939
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-void

    .line 3937
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 4285
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4370
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4361
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    monitor-enter p1

    .line 4362
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4363
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    .line 4365
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4367
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 4309
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 4311
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 4316
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v3, 0xa

    if-eq p1, v3, :cond_4

    const/16 v3, 0x10

    if-eq p1, v3, :cond_3

    .line 4322
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 4341
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 4343
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    goto :goto_1

    .line 4329
    :cond_4
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz p1, :cond_5

    .line 4330
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v1

    .line 4332
    :goto_2
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iput-object v3, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz p1, :cond_2

    .line 4334
    iget-object v3, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4335
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 4351
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4353
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4349
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4354
    :goto_4
    throw p1

    .line 4358
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p1

    .line 4299
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 4300
    check-cast p3, Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 4301
    iget-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iget-object v1, p3, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4302
    iget p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    iget v1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    iget v3, p3, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    iget p3, p3, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    invoke-interface {p2, p1, v1, v0, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    .line 4303
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 4296
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    invoke-direct {p1, v1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    :pswitch_5
    return-object v1

    .line 4290
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p1

    .line 4287
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

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

.method public getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1

    .line 4002
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Direction;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4003
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    :cond_0
    return-object v0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 3926
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4052
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4056
    iget-object v1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4058
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4060
    :cond_1
    iget v1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    sget-object v2, Lcom/google/firestore/v1/StructuredQuery$Direction;->DIRECTION_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v2}, Lcom/google/firestore/v1/StructuredQuery$Direction;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 4061
    iget v2, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    .line 4062
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4064
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

    .line 4043
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4044
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Order;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4046
    :cond_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$Direction;->DIRECTION_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredQuery$Direction;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4047
    iget v1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    return-void
.end method
