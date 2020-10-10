.class public Lcom/google/firebase/firestore/DocumentSnapshot;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;,
        Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    }
.end annotation


# instance fields
.field private final doc:Lcom/google/firebase/firestore/model/Document;

.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final metadata:Lcom/google/firebase/firestore/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 109
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/firestore/model/DocumentKey;

    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 110
    iput-object p3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    .line 111
    new-instance p1, Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-direct {p1, p5, p4}, Lcom/google/firebase/firestore/SnapshotMetadata;-><init>(ZZ)V

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    return-void
.end method

.method private convertArray(Lcom/google/firebase/firestore/model/value/ArrayValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/value/ArrayValue;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 616
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 617
    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertValue(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/value/ObjectValue;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->getInternalValue()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 609
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertValue(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertReference(Lcom/google/firebase/firestore/model/value/ReferenceValue;)Ljava/lang/Object;
    .locals 5

    .line 587
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->value()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object p1

    .line 589
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    .line 590
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    .line 592
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 597
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 598
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 599
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    .line 600
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x4

    .line 601
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p1

    const-string p1, "DocumentSnapshot"

    const-string v1, "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead."

    .line 592
    invoke-static {p1, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    :cond_0
    new-instance p1, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object p1
.end method

.method private convertServerTimestamp(Lcom/google/firebase/firestore/model/value/ServerTimestampValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;
    .locals 1

    .line 567
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$1;->$SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I

    iget-object p2, p2, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->getLocalWriteTime()Lcom/google/firebase/Timestamp;

    move-result-object p1

    return-object p1

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->getPreviousValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private convertTimestamp(Lcom/google/firebase/firestore/model/value/TimestampValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;
    .locals 0

    .line 578
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/TimestampValue;->value()Lcom/google/firebase/Timestamp;

    move-result-object p1

    .line 579
    iget-boolean p2, p2, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;->timestampsInSnapshotsEnabled:Z

    if-eqz p2, :cond_0

    return-object p1

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private convertValue(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;
    .locals 1

    .line 551
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v0, :cond_0

    .line 552
    check-cast p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 553
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    if-eqz v0, :cond_1

    .line 554
    check-cast p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertArray(Lcom/google/firebase/firestore/model/value/ArrayValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 555
    :cond_1
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    if-eqz v0, :cond_2

    .line 556
    check-cast p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertReference(Lcom/google/firebase/firestore/model/value/ReferenceValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 557
    :cond_2
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    if-eqz v0, :cond_3

    .line 558
    check-cast p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertTimestamp(Lcom/google/firebase/firestore/model/value/TimestampValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 559
    :cond_3
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    if-eqz v0, :cond_4

    .line 560
    check-cast p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertServerTimestamp(Lcom/google/firebase/firestore/model/value/ServerTimestampValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 562
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 7

    .line 116
    new-instance v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/DocumentSnapshot;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V

    return-object v6
.end method

.method static fromNoDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;ZZ)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 7

    .line 121
    new-instance v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/DocumentSnapshot;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 640
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 643
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 644
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v3, p1, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v3, p1, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 645
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    .line 646
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/model/Document;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    iget-object p1, p1, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 647
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/SnapshotMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public exists()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 167
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 175
    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->areTimestampsInSnapshotsEnabled()Z

    move-result v3

    invoke-direct {v2, p1, v3, v1}, Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;-><init>(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;ZLcom/google/firebase/firestore/DocumentSnapshot$1;)V

    .line 171
    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->convertObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Lcom/google/firebase/firestore/DocumentSnapshot$FieldValueOptions;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    return-object v0
.end method

.method public getReference()Lcom/google/firebase/firestore/DocumentReference;
    .locals 3

    .line 529
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 653
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 654
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/Document;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 655
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/SnapshotMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Provided POJO type must not be null."

    .line 204
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 205
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getReference()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentReference;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentSnapshot{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
