# Get Number of (Virtual) Processor Cores

case `uname` in
  Darwin) sysctl -n hw.ncpu ;;
  SunOS)  psrinfo | wc -l ;;
  Linux)  nproc ;; 
esac

