.class public final Lcom/google/firebase/firestore/model/DocumentKey;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final path:Lcom/google/firebase/firestore/model/ResourcePath;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->COMPARATOR:Ljava/util/Comparator;

    .line 32
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/model/DocumentKey;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Not a document key path: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-void
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static empty()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    return-object v0
.end method

.method public static emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public static fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/DocumentKey;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-object v0
.end method

.method public static fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/firestore/model/DocumentKey;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-static {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/DocumentKey;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-object v0
.end method

.method public static isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/BasePath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 113
    const-class v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 119
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/BasePath;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public hasCollectionId(Ljava/lang/String;)Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, v0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/BasePath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
