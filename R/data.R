
#' @title IMU Data from a XSens MTi-G sensor
#' @description This data set contains gyroscope and accelerometer data from a XSens MTi-G sensor.
#' @format A \code{matrix} with 873,684 observations and 6 columns. The columns are defined as follows:
#' \describe{
#'  \item{\code{Gyro. X}}{Gyroscope X-Axis}
#'  \item{\code{Gyro. Y}}{Gyroscope Y-Axis}
#'  \item{\code{Gyro. Z}}{Gyroscope Z-Axis}
#'  \item{\code{Accel. X}}{Accelerometer X-Axis}
#'  \item{\code{Accel. Y}}{Accelerometer Y-Axis}
#'  \item{\code{Accel. Z}}{Accelerometer Z-Axis}
#' }
#' @source Geodetic Engineering Laboratory (TOPO), Swiss Federal Institute of Technology Lausanne (EPFL)
#' @author JJB
#' @details
#' This data set is equivalent to the \code{\link[imudata]{mtig}} data set. The only difference
#' is that this data set acts as a way to showcase the \code{\link[gmwm]{imu}} cast function whereas
#' \code{\link[imudata]{mtig}} has already been cast using \code{\link[gmwm]{imu}}.
#' @seealso \code{\link[imudata]{mtig}}
#' @examples
#' \dontrun{
#' data(KVH1750imuAcc)
#' summary(KVH1750imuAcc)
#' }
"KVH1750imuAcc"
