
KVH_1750_IMU_16_3_2017_11_am = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp1/LOGGING_1750_IMU_1612K001_03_02_31_1000.csv",skip = 18, header=TRUE, sep=",")
KVH_1750_IMU_16_3_2017_2_pm = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp2/LOGGING_1750_IMU_1612K001_03_28_00_1000.csv",skip = 18, header=TRUE, sep=",")
KVH_1750_IMU_16_3_2017_5_pm = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp3/LOGGING_1750_IMU_1612K001_03_51_34_1000.csv",skip = 18, header=TRUE, sep=",")
KVH_1750_IMU_17_3_2017_10_am = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp4/LOGGING_1750_IMU_1612K001_10_10_06_1000.csv",skip = 18, header=TRUE, sep=",")
KVH_1750_IMU_17_3_2017_2_pm = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp5/LOGGING_1750_IMU_1612K001_10_34_28_1000.csv",skip = 18, header=TRUE, sep=",")
KVH_1750_IMU_18_3_2017_12_pm = read.csv(file="/Users/gaetan/Documents/KVH IMU/Data/StaticData_1kHz/Exp6/LOGGING_1750_IMU_1612K001_10_58_32_1000.csv",skip = 18, header=TRUE, sep=",")


library(classimu)
library(wv)

N1 = dim(KVH_1750_IMU_16_3_2017_11_am)[1]
N2 = dim(KVH_1750_IMU_16_3_2017_2_pm)[1]
N3 = dim(KVH_1750_IMU_16_3_2017_5_pm)[1]
N4 = dim(KVH_1750_IMU_17_3_2017_10_am)[1]
N5 = dim(KVH_1750_IMU_17_3_2017_2_pm)[1]
N6 = dim(KVH_1750_IMU_18_3_2017_12_pm)[1]

N1 = 1000000
N2 = 1000000
N3 = 1000000
N4 = 1000000
N5 = 1000000
N6 = 1000000

# KVH 1750 IMU

R1.Xgyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,3])
R2.Xgyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,3])
R3.Xgyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,3])
R4.Xgyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,3])
R5.Xgyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,3])
R6.Xgyro = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,3])

KVH_1750_IMU_1kHz_Xgyro = make_wvar_mimu_obj(R1.Xgyro, R2.Xgyro, R3.Xgyro,R4.Xgyro,R5.Xgyro,R6.Xgyro, freq = 1000, unit = "Degrees/Sec",
                                              sensor.name = "KVH 1750 IMU 1k Hz Gyroscope X-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                          "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                          "17/3/2017 4pm", "18/3/2017 4.10pm"))


R1.Ygyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,4])
R2.Ygyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,4])
R3.Ygyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,4])
R4.Ygyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,4])
R5.Ygyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,4])
R6.Ygyro = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,4])

KVH_1750_IMU_1kHz_Ygyro = make_wvar_mimu_obj(R1.Ygyro, R2.Ygyro, R3.Ygyro,R4.Ygyro,R5.Ygyro,R6.Ygyro, freq = 1000, unit = "Degrees/Sec",
                                              sensor.name = "KVH 1750 IMU 1k Hz Gyroscope Y-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                                "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                                "17/3/2017 4pm", "18/3/2017 4.10pm"))

R1.Zgyro = (KVH_1750_IMU_16_3_2017_11_am[1:N1,5])
R2.Zgyro = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,5])
R3.Zgyro = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,5])
R4.Zgyro = (KVH_1750_IMU_17_3_2017_10_am[1:N4,5])
R5.Zgyro = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,5])
R6.Zgyro = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,5])

KVH_1750_IMU_1kHz_Zgyro = make_wvar_mimu_obj(R1.Zgyro, R2.Zgyro, R3.Zgyro,R4.Zgyro,R5.Zgyro,R6.Zgyro, freq = 1000, unit = "Degrees/Sec",
                                              sensor.name = "KVH 1750 IMU 1k Hz Gyroscope Z-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                                "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                                "17/3/2017 4pm", "18/3/2017 4.10pm"))



R1.Xacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,6])
R2.Xacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,6])
R3.Xacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,6])
R4.Xacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,6])
R5.Xacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,6])
R6.Xacc = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,6])

KVH_1750_IMU_1kHz_Xacc = make_wvar_mimu_obj(R1.Xacc, R2.Xacc, R3.Xacc,R4.Xacc,R5.Xacc,R6.Xacc, freq = 1000, unit = "g",
                                             sensor.name = "KVH 1750 IMU 1k Hz Accelerometer X-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                                   "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                                   "17/3/2017 4pm", "18/3/2017 4.10pm"))



R1.Yacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,7])
R2.Yacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,7])
R3.Yacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,7])
R4.Yacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,7])
R5.Yacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,7])
R6.Yacc = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,7])

KVH_1750_IMU_1kHz_Yacc = make_wvar_mimu_obj(R1.Yacc, R2.Yacc, R3.Yacc,R4.Yacc,R5.Yacc,R6.Yacc, freq = 1000, unit = "g",
                                             sensor.name = "KVH 1750 IMU 1k Hz Accelerometer Y-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                                   "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                                   "17/3/2017 4pm", "18/3/2017 4.10pm"))


R1.Zacc = (KVH_1750_IMU_16_3_2017_11_am[1:N1,8])
R2.Zacc = (KVH_1750_IMU_16_3_2017_2_pm[1:N2,8])
R3.Zacc = (KVH_1750_IMU_16_3_2017_5_pm[1:N3,8])
R4.Zacc = (KVH_1750_IMU_17_3_2017_10_am[1:N4,8])
R5.Zacc = (KVH_1750_IMU_17_3_2017_2_pm[1:N5,8])
R6.Zacc = (KVH_1750_IMU_18_3_2017_12_pm[1:N6,8])

KVH_1750_IMU_1kHz_Zacc = make_wvar_mimu_obj(R1.Zacc, R2.Zacc, R3.Zacc,R4.Zacc,R5.Zacc,R6.Zacc, freq = 1000, unit = "g",
                                             sensor.name = "KVH 1750 IMU 1k Hz Accelerometer Z-Axis", exp.name = c("18/3/2017 3.20pm", "16/3/2017 3.30pm",
                                                                                                                   "16/3/2017 3.40pm", "17/3/2017 3.50pm",
                                                                                                                   "17/3/2017 4pm", "18/3/2017 4.10pm"))


KVH1750imu1kHzGyro = list(Gyro.X = KVH_1750_IMU_1kHz_Xgyro,Gyro.Y = KVH_1750_IMU_1kHz_Ygyro,Gyro.Z = KVH_1750_IMU_1kHz_Zgyro, class = "mimu")
names(KVH1750imu1kHzGyro) = c("Gyro. X", "Gyro. Y","Gyro. Z")

save(KVH1750imu1kHzGyro, file = "KVH1750imu1kHzGyro.rda", compress = "xz")

KVH1750imu1kHzAcc = list(Acc.X = KVH_1750_IMU_1kHz_Xacc,Acc.Y = KVH_1750_IMU_1kHz_Yacc,Acc.Z = KVH_1750_IMU_1kHz_Zacc, class = "mimu")
names(KVH1750imu1kHzAcc) =   c("Acc. X", "Acc. Y","Acc. Z")

save(KVH1750imu1kHzAcc, file = "KVH1750imu1kHzAcc.rda", compress = "xz")




