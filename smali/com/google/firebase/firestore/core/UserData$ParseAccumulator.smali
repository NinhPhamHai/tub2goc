.class public Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final dataSource:Lcom/google/firebase/firestore/core/UserData$Source;

.field private final fieldMask:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/UserData$Source;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->dataSource:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 88
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->fieldMask:Ljava/util/Set;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->fieldTransforms:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;)Lcom/google/firebase/firestore/core/UserData$Source;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->dataSource:Lcom/google/firebase/firestore/core/UserData$Source;

    return-object p0
.end method


# virtual methods
.method addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->fieldMask:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->fieldTransforms:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->fieldTransforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .locals 4

    .line 102
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseContext;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;-><init>(Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;Lcom/google/firebase/firestore/model/FieldPath;ZLcom/google/firebase/firestore/core/UserData$1;)V

    return-object v0
.end method
