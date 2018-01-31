
KVH_1750_IMU_16_3_2017_11_am = read.csv(file="/Users/gaetan/Desktop/50 hz/1/MT_077015E1-000-001.csv",skip = 6, header=TRUE, sep=",")
KVH_1750_IMU_16_3_2017_2_pm = read.csv(file="/Users/gaetan/Desktop/50 hz/2/MT_077015E1-000-001.csv",skip = 6, header=TRUE, sep=",")
KVH_1750_IMU_16_3_2017_5_pm = read.csv(file="/Users/gaetan/Desktop/50 hz/3/MT_077015E1-000-001.csv",skip = 6, header=TRUE, sep=",")
KVH_1750_IMU_17_3_2017_10_am = read.csv(file="/Users/gaetan/Desktop/50 hz/4/MT_077015E1-000-001.csv",skip = 6, header=TRUE, sep=",")
KVH_1750_IMU_17_3_2017_2_pm = read.csv(file="/Users/gaetan/Desktop/50 hz/5/MT_077015E1-000-001.csv",skip = 6, header=TRUE, sep=",")

head(KVH_1750_IMU_16_3_2017_11_am)


library(classimu)
library(wv)

N1 = dim(KVH_1750_IMU_16_3_2017_11_am)[1]
N2 = dim(KVH_1750_IMU_16_3_2017_2_pm)[1]
N3 = dim(KVH_1750_IMU_16_3_2017_5_pm)[1]
N4 = dim(KVH_1750_IMU_17_3_2017_10_am)[1]
N5 = dim(KVH_1750_IMU_17_3_2017_2_pm)[1]

# KVH 1750 IMU

R1.Xgyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,21])
R2.Xgyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,21])
R3.Xgyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,21])
R4.Xgyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,21])
R5.Xgyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,21])

KVH_1750_IMU_1kHrz_Xgyro = make_wvar_mimu_obj(R1.Xgyro, R2.Xgyro, R3.Xgyro,R4.Xgyro,R5.Xgyro, freq = 50, unit = "s",
                                              sensor.name = "MTI-G-710 IMU Gyroscope X-Axis", exp.name = c("Exp 1", "Exp 2",
                                                                                                           "Exp 3", "Exp 4",
                                                                                                           "Exp 5" ))


R1.Ygyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,22])
R2.Ygyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,22])
R3.Ygyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,22])
R4.Ygyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,22])
R5.Ygyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,22])

KVH_1750_IMU_1kHrz_Ygyro = make_wvar_mimu_obj(R1.Ygyro, R2.Ygyro, R3.Ygyro,R4.Ygyro,R5.Ygyro, freq = 50, unit = "s",
                                              sensor.name = "MTI-G-710 IMU Gyroscope Y-Axis",  exp.name = c("Exp 1", "Exp 2",
                                                                                                            "Exp 3", "Exp 4",
                                                                                                            "Exp 5" ))


R1.Zgyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,23])
R2.Zgyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,23])
R3.Zgyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,23])
R4.Zgyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,23])
R5.Zgyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,23])

KVH_1750_IMU_1kHrz_Zgyro = make_wvar_mimu_obj(R1.Zgyro, R2.Zgyro, R3.Zgyro,R4.Zgyro,R5.Zgyro, freq = 50, unit = "s",
                                              sensor.name = "MTI-G-710 IMU Gyroscope Z-Axis", exp.name = c("Exp 1", "Exp 2",
                                                                                                           "Exp 3", "Exp 4",
                                                                                                           "Exp 5" ))




R1.Xacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,18])
R2.Xacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,18])
R3.Xacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,18])
R4.Xacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,18])
R5.Xacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,18])

KVH_1750_IMU_1kHrz_Xacc = make_wvar_mimu_obj(R1.Xacc, R2.Xacc, R3.Xacc,R4.Xacc,R5.Xacc, freq = 50, unit = "s",
                                             sensor.name = "MTI-G-710 IMU Accelerometer X-Axis",exp.name = c("Exp 1", "Exp 2",
                                                                                                             "Exp 3", "Exp 4",
                                                                                                             "Exp 5" ))




R1.Yacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,19])
R2.Yacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,19])
R3.Yacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,19])
R4.Yacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,19])
R5.Yacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,19])

KVH_1750_IMU_1kHrz_Yacc = make_wvar_mimu_obj(R1.Yacc, R2.Yacc, R3.Yacc,R4.Yacc,R5.Yacc, freq = 50, unit = "s",
                                             sensor.name = "MTI-G-710 IMU Accelerometer Y-Axis",  exp.name = c("Exp 1", "Exp 2",
                                                                                                               "Exp 3", "Exp 4",
                                                                                                               "Exp 5" ))




R1.Zacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,20])
R2.Zacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,20])
R3.Zacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,20])
R4.Zacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,20])
R5.Zacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,20])

KVH_1750_IMU_1kHrz_Zacc = make_wvar_mimu_obj(R1.Zacc, R2.Zacc, R3.Zacc,R4.Zacc,R5.Zacc, freq = 50, unit = "s",
                                             sensor.name = "MTI-G-710 IMU Accelerometer Z-Axis",  exp.name = c("Exp 1", "Exp 2",
                                                                                                               "Exp 3", "Exp 4",
                                                                                                               "Exp 5" ))


MTIG710imu50Hz = list(Acc.X = KVH_1750_IMU_1kHrz_Xacc, Acc.Y = KVH_1750_IMU_1kHrz_Yacc, Acc.Z = KVH_1750_IMU_1kHrz_Zacc, 
                      Gyro.X = KVH_1750_IMU_1kHrz_Xgyro, Gyro.Y = KVH_1750_IMU_1kHrz_Ygyro, Gyro.Z = KVH_1750_IMU_1kHrz_Zgyro)
names(MTIG710imu50Hz) = c("Acc. X", "Acc. Y","Acc. Z","Gyro. X", "Gyro. Y","Gyro. Z")

save(MTIG710imu50Hz, file = "MTIG710imu50Hz.rda", compress = "xz")






