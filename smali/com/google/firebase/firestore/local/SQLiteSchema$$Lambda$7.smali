.class final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field private static final instance:Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;->instance:Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/common/base/Function;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;->instance:Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$ensureSequenceNumbers$7(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
