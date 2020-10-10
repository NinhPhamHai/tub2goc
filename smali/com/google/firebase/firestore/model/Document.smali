.class public final Lcom/google/firebase/firestore/model/Document;
.super Lcom/google/firebase/firestore/model/MaybeDocument;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/Document$DocumentState;
    }
.end annotation


# static fields
.field private static final KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final converter:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/google/firestore/v1/Value;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation
.end field

.field private final documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

.field private fieldValueCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation
.end field

.field private objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

.field private final proto:Lcom/google/firestore/v1/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/firebase/firestore/model/Document$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/Document;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/MaybeDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 67
    iput-object p3, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 68
    iput-object p4, p0, Lcom/google/firebase/firestore/model/Document;->objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    .line 70
    iput-object p1, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firestore/v1/Document;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Lcom/google/firebase/firestore/model/Document$DocumentState;",
            "Lcom/google/firestore/v1/Document;",
            "Lcom/google/common/base/Function<",
            "Lcom/google/firestore/v1/Value;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/MaybeDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 80
    iput-object p3, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 81
    iput-object p4, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    .line 82
    iput-object p5, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    return-void
.end method

.method public static keyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/google/firebase/firestore/model/Document;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 174
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/Document;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    iget-object v3, p1, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Expected proto and converter to be non-null"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/google/firebase/firestore/model/value/ObjectValue;->emptyObject()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/firestore/model/FieldPath;->fromSingleSegment(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    invoke-interface {v4, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 103
    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/firestore/model/value/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/google/firebase/firestore/model/Document;->objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/firebase/firestore/model/Document;->fieldValueCache:Ljava/util/Map;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-object v0
.end method

.method public getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->objectValue:Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Expected proto and converter to be non-null"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->fieldValueCache:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/google/firebase/firestore/model/Document;->fieldValueCache:Ljava/util/Map;

    .line 128
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    if-nez v1, :cond_5

    .line 133
    iget-object v3, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    invoke-virtual {v3}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->getFirstSegment()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    :goto_1
    if-eqz v3, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 135
    invoke-virtual {v3}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    sget-object v5, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-eq v4, v5, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_3
    invoke-virtual {v3}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 142
    iget-object v1, p0, Lcom/google/firebase/firestore/model/Document;->converter:Lcom/google/common/base/Function;

    invoke-interface {v1, v3}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 143
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method

.method public getProto()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->proto:Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method public hasCommittedMutations()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocalMutations()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v1, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/Document;->documentState:Lcom/google/firebase/firestore/model/Document$DocumentState;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
