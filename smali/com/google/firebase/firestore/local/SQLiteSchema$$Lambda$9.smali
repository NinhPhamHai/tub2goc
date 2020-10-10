.class final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$9;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteSchema;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/SQLiteSchema;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteSchema;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$9;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$createV8CollectionParentsIndex$9(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void
.end method
