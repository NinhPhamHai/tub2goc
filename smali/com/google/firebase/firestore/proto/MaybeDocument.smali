.class public final Lcom/google/firebase/firestore/proto/MaybeDocument;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;,
        Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/MaybeDocument;",
        "Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/MaybeDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private documentTypeCase_:I

.field private documentType_:Ljava/lang/Object;

.field private hasCommittedMutations_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 843
    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    .line 844
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/firestore/proto/MaybeDocument;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setHasCommittedMutations(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 427
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 164
    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setHasCommittedMutations(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    return-void
.end method

.method private setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 93
    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 235
    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 693
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 836
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 827
    :pswitch_0
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/firebase/firestore/proto/MaybeDocument;

    monitor-enter p1

    .line 828
    :try_start_0
    sget-object p2, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 829
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/Parser;

    .line 831
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 833
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 747
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 749
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 754
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_d

    const/16 v5, 0xa

    if-eq p1, v5, :cond_a

    const/16 v5, 0x12

    if-eq p1, v5, :cond_7

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_4

    const/16 v5, 0x20

    if-eq p1, v5, :cond_3

    .line 760
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 809
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    goto :goto_1

    .line 795
    :cond_4
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v0, :cond_5

    .line 796
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v3

    .line 799
    :goto_2
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 801
    iget-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 802
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    .line 804
    :cond_6
    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    goto :goto_1

    .line 781
    :cond_7
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v1, :cond_8

    .line 782
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document$Builder;

    goto :goto_3

    :cond_8
    move-object p1, v3

    .line 785
    :goto_3
    invoke-static {}, Lcom/google/firestore/v1/Document;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 787
    iget-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v5, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 788
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    .line 790
    :cond_9
    iput v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    goto :goto_1

    .line 767
    :cond_a
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v4, :cond_b

    .line 768
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    goto :goto_4

    :cond_b
    move-object p1, v3

    .line 771
    :goto_4
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 773
    iget-object v5, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 774
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    .line 776
    :cond_c
    iput v4, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 817
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 819
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 815
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 820
    :goto_6
    throw p1

    .line 824
    :cond_e
    :pswitch_2
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p1

    .line 707
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 708
    check-cast p3, Lcom/google/firebase/firestore/proto/MaybeDocument;

    .line 709
    iget-boolean p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    iget-boolean v3, p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    invoke-interface {p2, p1, p1, v3, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    .line 711
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument$1;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    invoke-virtual {p3}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v4, :cond_15

    if-eq p1, v1, :cond_13

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    goto :goto_7

    .line 734
    :cond_f
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-eqz p1, :cond_10

    const/4 v2, 0x1

    :cond_10
    invoke-interface {p2, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_7

    .line 727
    :cond_11
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-interface {p2, v2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    goto :goto_7

    .line 720
    :cond_13
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-interface {p2, v2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    goto :goto_7

    .line 713
    :cond_15
    iget p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-ne p1, v4, :cond_16

    const/4 v2, 0x1

    :cond_16
    iget-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-interface {p2, v2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    .line 738
    :goto_7
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_17

    .line 740
    iget p1, p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    if-eqz p1, :cond_17

    .line 741
    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    :cond_17
    return-object p0

    .line 704
    :pswitch_4
    new-instance p1, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    invoke-direct {p1, v3}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;-><init>(Lcom/google/firebase/firestore/proto/MaybeDocument$1;)V

    return-object p1

    :pswitch_5
    return-object v3

    .line 698
    :pswitch_6
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p1

    .line 695
    :pswitch_7
    new-instance p1, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;-><init>()V

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

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 147
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 150
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getHasCommittedMutations()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    return v0
.end method

.method public getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 2

    .line 76
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 341
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 346
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/proto/NoDocument;

    .line 347
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_1
    iget v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 351
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_2
    iget v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 354
    iget-object v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 355
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_3
    iget-boolean v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 359
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_4
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 2

    .line 218
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0

    .line 221
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;

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

    .line 326
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 329
    :cond_0
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 332
    :cond_1
    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 335
    :cond_2
    iget-boolean v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 336
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_3
    return-void
.end method
