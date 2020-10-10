.class public final Lcom/google/firestore/v1/ListenRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/ListenRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenRequest$Builder;,
        Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;,
        Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenRequest;",
        "Lcom/google/firestore/v1/ListenRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetChangeCase_:I

.field private targetChange_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 910
    new-instance v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    .line 911
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 259
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListenRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setAddTarget(Lcom/google/firestore/v1/Target;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListenRequest;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setRemoveTarget(I)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 915
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 461
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest$Builder;

    return-object v0
.end method

.method private setAddTarget(Lcom/google/firestore/v1/Target;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 162
    iput p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setRemoveTarget(I)V
    .locals 1

    const/4 v0, 0x3

    .line 229
    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 781
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 903
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 894
    :pswitch_0
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firestore/v1/ListenRequest;

    monitor-enter p1

    .line 895
    :try_start_0
    sget-object p2, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 896
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 898
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 900
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 830
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 832
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v3, :cond_b

    .line 837
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0xa

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x18

    if-eq p1, v5, :cond_5

    const/16 v5, 0x22

    if-eq p1, v5, :cond_3

    .line 843
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 874
    :cond_3
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 875
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 877
    :cond_4
    sget-object p1, Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    iget-object v5, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1, v5, p2, p3}, Lcom/google/protobuf/MapEntryLite;->parseInto(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_1

    .line 869
    :cond_5
    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 870
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    goto :goto_1

    .line 856
    :cond_6
    iget p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    if-ne p1, v2, :cond_7

    .line 857
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v1

    .line 860
    :goto_2
    invoke-static {}, Lcom/google/firestore/v1/Target;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 862
    iget-object v5, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v5, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 863
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 865
    :cond_8
    iput v2, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    goto :goto_1

    .line 849
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 851
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_3
    const/4 v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 884
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 886
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 882
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 887
    :goto_4
    throw p1

    .line 891
    :cond_b
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object p1

    .line 796
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 797
    check-cast p3, Lcom/google/firestore/v1/ListenRequest;

    .line 798
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    iget-object v5, p3, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 799
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    iget-object v6, p3, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 798
    invoke-interface {p2, p1, v1, v5, v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 800
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 801
    invoke-direct {p3}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 800
    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMap(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/MapFieldLite;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 802
    sget-object p1, Lcom/google/firestore/v1/ListenRequest$1;->$SwitchMap$com$google$firestore$v1$ListenRequest$TargetChangeCase:[I

    invoke-virtual {p3}, Lcom/google/firestore/v1/ListenRequest;->getTargetChangeCase()Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v4, :cond_10

    if-eq p1, v2, :cond_e

    if-eq p1, v0, :cond_c

    goto :goto_5

    .line 816
    :cond_c
    iget p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    :cond_d
    invoke-interface {p2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_5

    .line 811
    :cond_e
    iget p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    if-ne p1, v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    goto :goto_5

    .line 804
    :cond_10
    iget p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    if-ne p1, v2, :cond_11

    const/4 v3, 0x1

    :cond_11
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 820
    :goto_5
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_13

    .line 822
    iget p1, p3, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    if-eqz p1, :cond_12

    .line 823
    iput p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 825
    :cond_12
    iget p1, p0, Lcom/google/firestore/v1/ListenRequest;->bitField0_:I

    iget p2, p3, Lcom/google/firestore/v1/ListenRequest;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firestore/v1/ListenRequest;->bitField0_:I

    :cond_13
    return-object p0

    .line 793
    :pswitch_4
    new-instance p1, Lcom/google/firestore/v1/ListenRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;-><init>(Lcom/google/firestore/v1/ListenRequest$1;)V

    return-object p1

    .line 789
    :pswitch_5
    iget-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    return-object v1

    .line 786
    :pswitch_6
    sget-object p1, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object p1

    .line 783
    :pswitch_7
    new-instance p1, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {p1}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

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

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 373
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 377
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest;->getDatabase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_1
    iget v1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 382
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Target;

    .line 383
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_2
    iget v1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 386
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 387
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_3
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 392
    sget-object v3, Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const/4 v4, 0x4

    .line 393
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 395
    :cond_4
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getTargetChangeCase()Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->forNumber(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

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

    .line 355
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest;->getDatabase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 358
    :cond_0
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 361
    :cond_1
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 362
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 362
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    sget-object v2, Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const/4 v3, 0x4

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/google/protobuf/MapEntryLite;->serializeTo(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method
