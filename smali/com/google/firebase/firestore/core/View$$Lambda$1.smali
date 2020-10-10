.class final synthetic Lcom/google/firebase/firestore/core/View$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/core/View;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/View$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/View;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/core/View;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/core/View$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/core/View$$Lambda$1;-><init>(Lcom/google/firebase/firestore/core/View;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/View$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/View;

    check-cast p1, Lcom/google/firebase/firestore/core/DocumentViewChange;

    check-cast p2, Lcom/google/firebase/firestore/core/DocumentViewChange;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/core/View;->lambda$applyChanges$0(Lcom/google/firebase/firestore/core/View;Lcom/google/firebase/firestore/core/DocumentViewChange;Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result p1

    return p1
.end method
