.class public final Lcom/google/protobuf/Int32Value;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:protolite-well-known-types@@16.0.1"

# interfaces
.implements Lcom/google/protobuf/Int32ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Int32Value$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/Int32Value;",
        "Lcom/google/protobuf/Int32Value$Builder;",
        ">;",
        "Lcom/google/protobuf/Int32ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Int32Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lcom/google/protobuf/Int32Value;

    invoke-direct {v0}, Lcom/google/protobuf/Int32Value;-><init>()V

    sput-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    .line 282
    sget-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/Int32Value;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int32Value;->setValue(I)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 286
    sget-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Int32Value$Builder;
    .locals 1

    .line 138
    sget-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Int32Value;",
            ">;"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/protobuf/Int32Value;->value_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 203
    sget-object v0, Lcom/google/protobuf/Int32Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 274
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 265
    :pswitch_0
    sget-object p1, Lcom/google/protobuf/Int32Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/protobuf/Int32Value;

    monitor-enter p1

    .line 266
    :try_start_0
    sget-object p2, Lcom/google/protobuf/Int32Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 267
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/protobuf/Int32Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 269
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 271
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/protobuf/Int32Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 227
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 229
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 234
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    .line 240
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 247
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/Int32Value;->value_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 255
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 257
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    :goto_3
    throw p1

    .line 262
    :cond_5
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    return-object p1

    .line 217
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 218
    check-cast p3, Lcom/google/protobuf/Int32Value;

    .line 219
    iget p1, p0, Lcom/google/protobuf/Int32Value;->value_:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    iget v0, p0, Lcom/google/protobuf/Int32Value;->value_:I

    iget v3, p3, Lcom/google/protobuf/Int32Value;->value_:I

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget p3, p3, Lcom/google/protobuf/Int32Value;->value_:I

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/Int32Value;->value_:I

    .line 221
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 214
    :pswitch_4
    new-instance p1, Lcom/google/protobuf/Int32Value$Builder;

    invoke-direct {p1, v0}, Lcom/google/protobuf/Int32Value$Builder;-><init>(Lcom/google/protobuf/Int32Value$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 208
    :pswitch_6
    sget-object p1, Lcom/google/protobuf/Int32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int32Value;

    return-object p1

    .line 205
    :pswitch_7
    new-instance p1, Lcom/google/protobuf/Int32Value;

    invoke-direct {p1}, Lcom/google/protobuf/Int32Value;-><init>()V

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
    .locals 3

    .line 64
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 68
    iget v1, p0, Lcom/google/protobuf/Int32Value;->value_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 70
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_1
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/protobuf/Int32Value;->value_:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lcom/google/protobuf/Int32Value;->value_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    return-void
.end method
